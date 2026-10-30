# Experiment plan — Acer AN515-58

[English README](../README.md) · [Tiếng Việt](../README.vi.md)

## English

The owner has agreed to include XeGfx testing in the investigation. The initial hardware reply is now [posted in issue #1](https://github.com/phmthnh/Acer-Nitro-AN515-58-OpenCore-Investigation/issues/1#issuecomment-6530954373). At the 31 October follow-up check, no upstream response was present. No XeGfx driver has been installed or loaded. Recovery/desktop boot remains unconfirmed.

| Step | Work and completion evidence | Current status |
|---|---|---|
| 1. Hardware handoff | Share the curated Linux summary with XeGfx issue #1. Confirm the exact saved BIOS graphics mode separately. Explain that no macOS installation is running yet. | Initial reply posted; BIOS value and upstream response pending |
| 2. Baseline boot | Boot the prepared Kingston GRUB → OpenCore 1.0.8 → Tahoe Recovery test. Record last visible line, screen photo, matching OpenCore log and exact configuration. If EXITBS recurs, investigate boot before installing graphics components. | Follow-up log 2026-10-31-023130 selected correct Kingston Tahoe Recovery: Darwin 25.6.0, CPUID patch success, seven kext injections success; still ends at EXITBS. No Recovery UI or diagnostic panic. Next proposed isolation test: direct firmware launch with the same config. |
| 3. External macOS | After Recovery works, identify the external Intel SSD by model, capacity and physical connection before any installation. Install only to that intended external disk. Confirm desktop/build and an independent Recovery/boot fallback. | Blocked by baseline boot |
| 4. XeGfx preparation | Ask upstream for a suitable pinned commit for 8086:46A6, supported macOS build, firmware needs for stage 2, prerequisite security settings and exact uninstall/recovery procedure. Review install scripts and automatic-loading behavior at that commit. Record required changes before applying them. Preserve baseline EFI and external OS recovery options. | Awaiting upstream guidance and macOS |
| 5. Stage-2 probe | On the external macOS test system, follow the reviewed upstream build/install instructions, reboot, manually load XeGfx and select stage 2 only. Save XeGfxResident IORegistry output and binary debug.xegfx_log, exit/error messages and any panic report. The stage reads registers; installing a kext changes the auxiliary kernel collection and a hang remains possible. | Not started |
| 6. Report and decide | Report success, partial output or failure with exact commit, macOS build, BIOS mode, EFI/config identity and reproduction steps. Ask upstream to interpret the result before considering another stage. | Not started |

The existing NootedGreen/Yoga investigation remains a separate experiment. Its graphics payload, HookCase and NullMoth components must not be combined with the first XeGfx probe environment. A separate external OS backup or clean restore point is needed: swapping EFI alone does not remove installed graphics components.

Stage 3/4 and acceleration testing require a later reviewed plan. Do not assume stage 2 fixes EXITBS, proves firmware compatibility, or establishes Metal/Vulkan acceleration. No Windows/internal-disk modifications, BIOS reset or NVRAM reset are part of this plan. Any later prerequisite affecting firmware or security settings must be described and assessed first.

For each run retain: test ID/date; source commit and binary hashes; OS build; actual BIOS value; config hash; changes since previous run; commands/stage; raw outputs and outcome; recovery outcome if needed. Publish only reviewed, redacted evidence.

Sources: [invitation](https://github.com/phmthnh/Acer-Nitro-AN515-58-OpenCore-Investigation/issues/1), [upstream testing procedure](https://github.com/watchthelight-labs/XeGfx/blob/main/CONTRIBUTING.md#testing-on-your-machine). Instructions must be rechecked and pinned before execution.

## Tiếng Việt

Đã thống nhất thêm XeGfx vào kế hoạch. Lời trả lời phần cứng đã có trong issue #1; lần kiểm tra ngày 31/10 chưa thấy tác giả phản hồi. Chưa có kết quả chạy driver.

1. **Trao đổi dữ liệu trước:** đã gửi tóm tắt Linux và nói rõ máy chưa vào được macOS. Còn xác nhận lại giá trị BIOS đang lưu và chờ tác giả phản hồi.
2. **Thử boot bộ nền:** Kingston → GRUB → OpenCore → Tahoe Recovery. Lưu ảnh màn hình và log tương ứng. Nếu còn EXITBS, tiếp tục xử lý boot trước.
3. **Cài macOS lên ổ ngoài:** chỉ làm sau khi Recovery hoạt động và nhận diện chính xác ổ Intel ngoài bằng model/dung lượng/kết nối. Xác nhận vào desktop và có đường phục hồi độc lập.
4. **Chuẩn bị XeGfx:** nhờ tác giả chỉ định commit cho 46A6, build macOS, yêu cầu firmware cho stage 2, thiết lập bảo mật và cách gỡ/phục hồi. Rà script cài và cơ chế tự nạp ở đúng commit. Giữ backup EFI và hệ macOS ngoài trước khi thay đổi.
5. **Thử stage 2:** chỉ chạy trong macOS ngoài đã chuẩn bị. Làm theo hướng dẫn đã rà, nạp thủ công và thu IORegistry/log. Stage 2 chỉ đọc thanh ghi nhưng cài kext có thay đổi hệ thống và vẫn có khả năng treo.
6. **Báo cáo rồi mới quyết định:** gửi đúng commit, build macOS, BIOS, cấu hình và toàn bộ kết quả cần thiết. Chờ diễn giải trước khi lên bước sâu hơn.

NootedGreen/Yoga tiếp tục là nhánh thử riêng. Không ghép bộ tăng tốc đó vào môi trường XeGfx đầu tiên. Backup hệ macOS cần thiết vì đổi EFI không gỡ được payload đã cài trong hệ điều hành.

Chưa đưa stage 3/4 hoặc thử tăng tốc vào lượt chạy đầu. Không đặt lại BIOS/NVRAM, không sửa phân vùng Windows hay ổ trong. Bước tiếp theo trên máy thật vẫn là **thử boot bộ nền Tahoe và lấy log mới**; song song có thể trao đổi dữ liệu với tác giả ngay.
