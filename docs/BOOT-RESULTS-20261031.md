# Physical boot results — 31 October 2026

[English README](../README.md) · [Tiếng Việt](../README.vi.md) · [Active plan](EXPERIMENT-PLAN-20261030.md)

## English

The correct Tahoe Recovery **still stops at `EXITBS:START`** on the Acer. This is a physical-machine result; it is not a QEMU result or an acceleration test. No diagnostic kernel panic has been captured.

| Run / original filename | Actual selection | Kernel / CPUID | Outcome |
|---|---|---|---|
| `opencore-2026-10-31-021248.txt` | New Kingston OpenCore, older Recovery on another USB labelled `1401` | Darwin 24.6.0; CPUID patch skipped because this config targets Darwin 25.x | EXITBS; not a Tahoe test |
| `opencore-2026-10-31-023130.txt` | New Kingston OpenCore, `Acer Tahoe 25G241 - KINGSTON` Recovery | Darwin 25.6.0; `[OK] Patch success CPUID release` | EXITBS; no Recovery UI |
| `opencore-2026-10-31-032717.txt` | P1 CPU: same Tahoe Recovery; CpuTscSync 1.1.2 + CpuTopologyRebuild 2.0.2; three Yoga quirk differences | Darwin 25.6.0; CPUID success; nine injections success | EXITBS; CPU callback execution unverified |

The filename/booter timestamps above are preserved as recorded by firmware; they are not converted to a user timezone. The owner's screen photograph agrees with the second selection and last line.

### Evidence and controls

- [Reviewed excerpts from all three logs](../evidence/boot-20261031-reviewed-excerpts.txt), preserving original line text and documenting omissions. These are excerpts, not complete logs.
- [Machine-readable summary and original-log hashes](../evidence/boot-20261031-summary.json). Original logs and SysReport remain local. Hashes identify those originals, not the excerpt file.
- Official OpenCore `DBG-108-2026-09-27`; `EFI/AcerTest/BOOTx64.efi` bootstrap loads `EFI/OC/OpenCore.efi`, reached via the Kingston GRUB entry.
- Current config SHA256 matches the prepared baseline: `cc08bf00650ddc6a777b7effacfb1cdafe80acb7a81aac5061f930621666b18f`. The local saved config has CPUID EAX `0x000A0655`, mask `FFFFFFFF`, restricted to Darwin 25.x. The log independently confirms successful CPUID patching in the Tahoe run.
- The second run's image SHA256 is `32fadc6bea6f453df0d809b7c5999191fcd42b74c7a6b08c396db1c469eea8fe`, matching the independently verified prepared Recovery image. Its SystemVersion is 26.7.1 / 25G241; the kernel reports 25.6.0.
- All seven configured kext injections report success. BootKernelExtensions.kc loading and prelinking report success. This does not establish successful kernel initialization or kext execution.
- OpenRuntime r12 loaded and rendezvoused successfully; firmware reports MAT support. `RebuildAppleMemoryMap=True`, `SyncRuntimePermissions=True`, `EnableWriteUnprotector=False`, `SetupVirtualMap=False` in the current baseline, matching the relevant log flags.
- Valid slide range is 0–50; Tahoe uses `slide=36`, inside that range. This alone neither proves nor rules out a memory-layout problem.
- No NootedGreen, HookCase, NullMoth or XeGfx stack is active in this baseline. No XeGfx probe has run.

Before the second run, only a Recovery label file was added to distinguish the Kingston entry; config/kexts were unchanged. Prior preflight checked 29 EFI file hashes, all 140 Recovery data chunks, three original Ubuntu EFI files against backup, and USB write/read access; `ocvalidate 1.0.8` passed.

### What remains unknown

The last visible/logged marker does not tell us whether ExitBootServices itself failed, or later execution stopped producing visible output. The log does not identify a GPU, ACPI, CPU or particular quirk as the cause. Nearby `Err(0xE)` lines involving firmware variables or `OS.dmg.root_hash` are not a standalone diagnosis. OpenCore's `VMware Mac installed` message is not evidence that this physical boot ran inside VMware.

The direct-firmware isolation test remains deferred at the owner's request. The priority is the [Yoga port and early-boot investigation](NEXT-STEPS-20261031.md); the graphics draft is not deployed. There is no BIOS/NVRAM reset, Windows boot change or partition change in this update. Preserve Ubuntu recovery and collect a matching new log/photo before changing multiple variables.

Raw SysReport includes Windows licensing and SMBIOS data, and its reused directory may include files from earlier runs. It is deliberately not published as a fresh, complete per-run dump. Driver binaries, Apple images and private EFI identities are also excluded.

## Tiếng Việt

**Đã thử đúng Tahoe và vẫn dừng tại `EXITBS:START`.** Lượt đầu dùng OpenCore mới nhưng chọn nhầm Recovery `1401` cũ, kernel 24.6.0 nên CPUID patch dành cho Darwin 25.x bị bỏ qua. Lượt thứ hai chọn đúng Kingston, kernel **25.6.0** và CPUID patch **thành công**, vẫn chưa vào giao diện Recovery.

Hash ảnh Recovery được nạp khớp ảnh Tahoe đã kiểm tra. Cả 7 kext báo chèn thành công, OpenRuntime nạp thành công, MAT support 1, VMAP 0. `slide=36` nằm trong khoảng hợp lệ 0–50. Các dấu hiệu này chưa chứng minh kernel hoặc kext khởi tạo thành công, cũng chưa chốt nguyên nhân lỗi bộ nhớ/CPU/GPU/ACPI.

Đã công bố trích log và hash nguồn; log đầy đủ, SysReport và định danh riêng giữ cục bộ. SysReport có thể chứa khóa Windows/SMBIOS và file cũ nên không đăng nguyên thư mục. Tên giờ trong log được giữ nguyên theo firmware, không tự suy thành giờ Việt Nam.

Kế hoạch tiếp theo là tách ảnh hưởng của GRUB bằng cách boot OpenCore trực tiếp, giữ nguyên config/kext/Recovery. Đây là phép thử đề xuất, **chưa triển khai và chưa chứng minh là bản sửa**. Chưa chạy XeGfx, chưa tăng tốc và chưa cài macOS lên ổ ngoài. Bản cập nhật này không thay boot Windows, BIOS/NVRAM hoặc phân vùng.

### P1 CPU follow-up

The latest config hash is `0382869306c270f5563e7dd0333042280f7eeff87c952cf0f5f6244fe20a01df`. It adds CpuTscSync 1.1.2 and CpuTopologyRebuild 2.0.2, sets ProtectUefiServices=True, EnableVectorAcceleration=False and ReleaseUsbOwnership=True. No graphics stack is active. The combined change did not improve the visible symptom; individual effects and CPU callback execution remain unknown. The new GetMemoryMap recovery messages occur with ProtectUefiServices enabled and do not by themselves diagnose the hang. See [OpenCore implementation](https://github.com/acidanthera/OpenCorePkg/blob/1.0.8/Library/OcAfterBootCompatLib/ServiceOverrides.c#L1096).

Lượt P1 CPU đã thử đúng cấu hình và đúng Tahoe, vẫn dừng EXITBS. Hai kext CPU báo chèn thành công nhưng chưa chứng minh thực thi. Bản đồ họa chưa kích hoạt. Đường boot trực tiếp tiếp tục tạm gác theo yêu cầu người dùng; kế hoạch hiện tại nằm ở tài liệu hướng tiếp theo.
