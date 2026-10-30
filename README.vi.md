# Acer Nitro AN515-58 — Điều tra OpenCore/macOS

[English — bản chính](README.md) | **Tiếng Việt**

Repo lưu bằng chứng phần cứng, lịch sử cấu hình và chẩn đoán boot cho **Acer Nitro AN515-58, i5-12500H, Intel Iris Xe và RTX 3060 Laptop**.

**Trạng thái ngày 30/10/2026:** máy Acer **chưa được xác nhận vào Recovery hoặc desktop macOS**. Các lượt Sequoia trước dừng ở `EXITBS:START`. Đã chuẩn bị riêng lượt thử Recovery Tahoe **26.7.1 / 25G241**, nhưng chưa có kết quả boot máy thật. Chưa chứng minh tăng tốc Intel hay NVIDIA trên máy này.

## Bắt đầu ở đâu?

1. [Trạng thái điều tra hiện tại](docs/STATUS-20261030.md) — số đo Linux, các bước làm cục bộ sau snapshot và câu hỏi còn mở; tài liệu này bằng tiếng Anh.
2. [Tóm tắt phần cứng Linux](evidence/linux-hardware-20261030-summary.json) — topology GPU, bộ nhớ và đường màn hình đã đo.
3. [Config 1401 lịch sử](drive-G/EFI/OC/config.plist), [tóm tắt cấu hình](evidence/drive-G-config-summary.json) và [patch ngày 22/10](docs/CONFIG-PATCH-20261022.md).
4. [Phân tích ACPI gốc](docs/ACPI-ANALYSIS-20261021.md), [lịch sử](docs/HISTORY.md), [nhờ hỗ trợ](docs/HELP-REQUEST.md) và [khôi phục](docs/RESTORE.md).

## Phần cứng và trạng thái đồ họa đã đo

| Thành phần | Bằng chứng / trạng thái |
|---|---|
| Máy / BIOS | Acer Nitro AN515-58; Insyde **V2.21** |
| CPU / RAM | Intel Core i5-12500H, Alder Lake-H; 12 lõi / 16 CPU logic; RAM 16 GB |
| iGPU Intel | **`8086:46A6`, revision `0C`**, subsystem `1025:159C`; `00:02.0`, ACPI `\_SB.PC00.GFX0` |
| Topology GPU | i915 Linux báo **80 EU, 5 DSS/subslice, mask `0x1F`**, 16 EU mỗi DSS |
| Bộ nhớ đồ họa | GGC **`0x02C1`** tại PCI offset `0x50`; GMS `0x02` giải mã thành **64 MiB stolen memory được cấu hình**. Chưa xác định dung lượng thực sự dùng được sau các vùng giữ riêng. |
| Màn hình trong | BOE `0ABF`, **1920×1080**; Intel **eDP-1, pipe A, DDI A / PHY A**, đang chạy 165 Hz trong lần thu Linux; có cả mode 60 Hz |
| GPU NVIDIA | RTX 3060 Laptop 6 GB, **`10DE:2560`**; `01:00.0`, ACPI `\_SB.PC00.PEG1.PEGP`; nouveau vẫn nhận GPU trong Linux |
| HDMI | Báo cáo phần cứng cũ ghi màn hình ngoài nối NVIDIA. Lần thu mới chỉ đọc connector Intel, chưa tự xác minh lại đường HDMI. |
| LAN / Wi-Fi | Killer E2600 `10EC:2600`; Killer AX1650i / Intel `8086:51F0` |
| Audio / touchpad | Báo cáo ghi Realtek ALC287 / Intel SST; Synaptics `SYNA7DB5` I2C; chưa kiểm chứng hoạt động trong macOS |
| Hai ổ thử ngoài | Kingston SA400S37120G **120 GB** làm ổ boot; Intel SS DSCKKF256G8 **256 GB** (~238 GiB) dự kiến cài macOS |

BIOS đã mở được **Optimus / Auto Select**. Bản thu Linux xác nhận màn hình trong đang do Intel điều khiển và NVIDIA vẫn hiện diện, nhưng không ghi lại đúng giá trị đang lưu trong menu BIOS. Ký tự ổ và số Disk chỉ là nhãn lịch sử, không dùng riêng chúng để nhận diện ổ khi ghi.

## Đã và chưa chứng minh được gì?

| Công việc | Kết quả và giới hạn |
|---|---|
| Điều tra boot Sequoia | Log dừng tại `EXITBS:START`, chưa có panic máy thật xác định nguyên nhân. Các lượt cục bộ sau sửa boot-args và DSDT vẫn dừng ở đó. |
| Thử `SetupVirtualMap` | Đã thử cả hai giá trị; log cục bộ sau xác nhận `VMAP 0` nhưng chưa tiến triển. Đây chưa phải bản sửa đã chứng minh. |
| QEMU/GDB | Có quan sát hữu ích trong VM, gồm panic sau can thiệp trạng thái CPU; **không phải panic thu từ Acer**. Xem [bằng chứng VM](evidence/post-entry-proof.json). |
| Ubuntu live | Chạy trực tiếp trên Acer; đã đọc topology GPU, PCI, EDID và ACPI. Đây là hoạt động của Linux, chưa chứng minh hỗ trợ macOS. |
| EFI nền Tahoe | Đã chuẩn bị cục bộ OpenCore **1.0.8 DEBUG chính thức**, cấu hình tối giản cho Acer và Recovery đúng build. Qua `ocvalidate` và kiểm tra file; chưa có kết quả boot máy thật. |
| Thử nghiệm NootedGreen | Bản build lại có parser `ngreen-eu=80` mà binary release Yoga đã rà còn thiếu. Chưa nạp hoặc thử trên Acer. |
| XeGfx | Developer đề nghị thông tin phần cứng trong [issue #1](https://github.com/phmthnh/Acer-Nitro-AN515-58-OpenCore-Investigation/issues/1). Chưa cài XeGfx hoặc chạy probe. |

Chưa có bằng chứng desktop tăng tốc, kết quả Metal, HDMI hoạt động, sleep/wake hay đầy đủ thiết bị ngoại vi. Qua validator, compile kext thành công hoặc hiện tên GPU không phải kết quả thử phần cứng thành công.

## Snapshot lịch sử và công việc cục bộ hiện tại

**`drive-G/` và release `drive-g-20261021` giữ nguyên snapshot ngày 21/10/2026.** Chúng chứa bộ 1401/NullMoth 2.4.3, DSDT thay thế và cấu hình CPU/GPU của thời điểm đó; không mô tả Kingston hiện tại hoặc EFI nền Tahoe mới.

EFI nền cục bộ về sau không có DSDT thay thế, patch ép HT, CpuTopologyRebuild hoặc bộ tăng tốc. USB giữ Ubuntu và thêm mục GRUB gọi sang OpenCore. Cách chainload này khác boot OpenCore trực tiếp từ firmware; cần tính đến khác biệt môi trường trước boot khi phân tích lỗi EXITBS.

EFI mới, bản thu Linux thô, kext build lại và các file bộ cài Apple vẫn được giữ cục bộ. Lần cập nhật repo này chỉ công bố **tóm tắt số đo đã chọn và tài liệu**, không đăng các binary đó. Chuẩn bị cục bộ chưa tạo thành một release EFI đã boot kiểm chứng.

Báo cáo ACPI lịch sử có 43 file. Lần thu Linux sau có 48 file bảng firmware, gồm DSDT và 31 SSDT, đã loại MSDM/SLIC. Không gộp hai bộ này thành một dump. Firmware khai báo 64 thiết bị CPU trong khi MADT bật 16 APIC; chỉ riêng con số 64 không chứng minh lỗi ACPI.

## Các hướng đồ họa thử nghiệm

- **NootedGreen / bộ TGL từ Yoga:** đánh giá riêng với NullMoth. Acer có 80 EU và GGC `0x02C1`, khác Yoga được tác giả báo 96 EU và `0xFEC1`. Không chép nguyên hai patch tĩnh ép 60 MiB hoặc runtime YogaGMSFix. Build và rà payload cục bộ mới là kiểm tra tĩnh, chưa phải bằng chứng tăng tốc.
- **XeGfx:** upstream vẫn ghi Alder Lake / Raptor Lake chưa được thử và cần báo cáo phần cứng cùng xử lý GuC riêng. Bước đầu chỉ hỏi thông tin. Probe stage 2 tùy chọn vẫn cần macOS đang chạy, cài kext vào auxiliary collection và nạp thủ công. Chưa thực hiện trên Acer. Xem [yêu cầu và điều kiện](docs/STATUS-20261030.md#xegfx-request).
- **NullMoth / NVIDIA:** được giữ trong bằng chứng lịch sử. Có file driver hay tham số `nvfb`/`nvaccel` không chứng minh RTX tăng tốc hoặc HDMI đã hoạt động.

## Tải và kiểm tra snapshot lịch sử

- [Release drive-g-20261021](https://github.com/phmthnh/Acer-Nitro-AN515-58-OpenCore-Investigation/releases/tag/drive-g-20261021).
- Asset `Acer-Nitro-drive-G-20261021-redacted.zip` chứa **163 file payload** cùng `SNAPSHOT-MANIFEST.json`.
- [Manifest từng file](evidence/drive-G-20261021-manifest.json), [hash release](evidence/drive-G-release.json); release cũng có `SHA256SUMS.txt`.
- `BaseSystem.dmg` và `nullmoth-nvidia-2.4.3.tar.gz` nằm trong ZIP release thay vì Git history do vượt 100 MiB.

Bản chia sẻ đã che 11 trường SMBIOS / SSID / mật khẩu Wi-Fi. Kiểm tra bằng `published_sha256`, không dùng hash nguồn hoặc EFI hash ban đầu trong profile. ZIP không giữ layout phân vùng và không phải ảnh ổ sẵn sàng boot. Một số bằng chứng cũ chỉ còn manifest hoặc bản tổng hợp; hash không thay nội dung log đọc được.

## Mong bạn bè hỗ trợ

Mục tiêu trước mắt là xác định giai đoạn lỗi và vào Recovery, sau đó mới đánh giá đồ họa bằng phép thử riêng. Khi đề xuất thay đổi, vui lòng ghi đúng snapshot/config, file hoặc method liên quan, lý do và log mong đợi. Phân biệt quan sát firmware, phân tích tĩnh, kết quả VM và boot máy thật.

Có thể gửi thông tin phần cứng trước khi thử driver mới. Không đưa định danh SMBIOS thật, thông tin Wi-Fi, khóa Windows hoặc tài khoản Apple vào báo cáo công khai.

## Nguồn và ghi nhận

[OpenCorePkg](https://github.com/acidanthera/OpenCorePkg) · [Dortania](https://dortania.github.io/OpenCore-Install-Guide/) · [1401](https://github.com/nullmoth/1401) · [NullMoth](https://github.com/nullmoth/nvidia-macos-driver) · [WhateverXe](https://github.com/b00t0x/WhateverXe) · [Nghiên cứu Dell Iris Xe/Tahoe](https://github.com/JulioNectar/Hackintosh-XPS13Plus-IrisXe-Tahoe) · [Tham chiếu Yoga](https://github.com/willyyypatootieee/Hackintosh-LenovoYoga-IrisXe-Tahoe) · [XeGfx](https://github.com/watchthelight-labs/XeGfx)

Thành phần bên thứ ba giữ điều khoản của tác giả. Repo điều tra không cấp lại giấy phép cho OpenCore, kexts, bộ cài Apple hoặc NullMoth và không nhận là tác giả các driver tham khảo.
