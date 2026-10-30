# Next work — 31 October 2026

[English README](../README.md) · [Tiếng Việt](../README.vi.md) · [Boot evidence](BOOT-RESULTS-20261031.md)

## English

The Yoga port remains the selected direction. The P1 CPU transfer has now been tested and still ends at EXITBS. No Recovery UI, installed external macOS, or running graphics stack is established. Repeating the same configuration is not the next planned action.

### 1. Review the pre-kernel handoff

Trace the pinned OpenCore 1.0.8 paths around boot.efi, ExitBootServices and the kernel call gate. Determine which milestones are currently observable, and design a diagnostic build only if it can distinguish concrete alternatives: failure before firmware services exit, failure preparing kernel state, or loss of visible output after transfer. Logging itself can affect memory allocation/timing, and ordinary file logging cannot be assumed available after ExitBootServices. Do not present an instrumented build as ready until source changes, build provenance and collection limitations are documented.

Use the current P1 and previous baseline as controls. CPU-kext injection success is not evidence that a topology/TSC callback ran. The current evidence cannot justify a specific MSR/ACPI/graphics patch as a fix. Keep direct firmware launch as an explicitly deferred option, not a completed experiment.

### 2. Finish an Acer-specific graphics contract

The local P1 draft includes NootedGreen 80-EU selection, physical/spoof matching restrictions and an opt-in guard suppressing one donor panel-timing fallback. It excludes the Yoga FE/60 MiB fixes, cursor trial and PEG2 power-off SSDT. It has passed static checks, not runtime checks; it is not the active USB profile.

Remaining work: identify L3 from hardware evidence; verify mode-ID/pitch/timing assumptions for the BOE 1920×1080 panel; trace every relevant memory allocation/reservation rather than assuming all 64 MiB is usable; review the guard's impact when EFI pipe A is inactive; validate CPU-kext behavior against Darwin 25.6.0 before adding more topology changes. Do not guess register writes or power off PEG1 using a renamed Lenovo SSDT.

### 3. Resolve the installation dependency

The Yoga stack needs TGL kernel components, HookCase and userspace/compiler bundles inside macOS. Its author describes the consolidated installer as untested on a fresh installation and tied to the original external target. See [upstream README](https://github.com/willyyypatootieee/Hackintosh-LenovoYoga-IrisXe-Tahoe/blob/9c7078574eed90d658eac60f7f6a1de4f3a2bed7/README.md).

The Acer currently has verified Apple 25G241 files and Recovery, not a completed offline installer or installed external system. A different compatible Mac/environment could prepare an external installation if available; that would prepare media, not prove Acer boot compatibility. Otherwise early-boot bring-up remains a prerequisite. Installing GPU payload into Recovery itself is a separate engineering project involving boot collections and signing, not the preserved Yoga install procedure, and has not been implemented or validated here.

Before any payload deployment: identify the actual external Intel target, obtain its real partition UUID, validate native codesign/kmutil and security requirements, and prepare offline rollback for the exact OS volume layout. Keep the local installer/restore blocked until these conditions are met. Changing EFI cannot remove OS payload.

### 4. Continue developer collaboration

XeGfx issue #1 was rechecked during this update: only the owner's initial hardware reply was present. No XeGfx probe has run. Keep hardware information ready; stage 2 requires a running macOS environment under the currently reviewed instructions. Yoga and XeGfx tests need separate OS states.

### Completion gate before another requested boot

Produce either a diagnostic build with defined observable milestones, or an Acer candidate with an explained code/config change and a specific expected outcome. Preserve the existing evidence and backup. No Windows disk changes, BIOS/NVRAM reset or speculative GPU power method is part of this plan. This update publishes documentation and reviewed text evidence only; no driver, private config or Apple binary is released.

## Tiếng Việt

Giữ hướng chuyển thể Yoga, nhưng P1 CPU đã thử và vẫn EXITBS nên chưa yêu cầu lặp lại cấu hình đó.

1. **Ưu tiên chẩn đoán điểm chuyển vào kernel:** theo mã OpenCore/boot.efi để thiết kế mốc quan sát phân biệt trước ExitBootServices, chuẩn bị trạng thái kernel và sau chuyển giao. Chưa có bản diagnostic mới; ghi log cũng có thể thay đổi môi trường bộ nhớ và không thể mặc định còn ghi file sau ExitBootServices.
2. **Hoàn thiện phần đồ họa Acer:** kiểm tra L3, mode ID/pitch/timing màn BOE, vùng bộ nhớ thật sự dùng được và guard mới. Giữ 80 EU, bỏ các correction riêng của Yoga; chưa bật cấu hình đồ họa DRAFT trên USB.
3. **Giải quyết phụ thuộc cài OS:** bộ Yoga cần payload bên trong macOS, trong khi Acer chưa vào Recovery. Chỉ có EFI mới chưa tạo thành phép thử đầy đủ. Nếu có môi trường Mac phù hợp có thể chuẩn bị OS ngoài; việc đó không bảo đảm Acer boot được. Không có môi trường ấy thì vẫn phải xử lý khởi tạo sớm. Chưa sửa ảnh Recovery để nhét bộ GPU vì đó là dự án khác với quy trình Yoga đã rà.
4. **Chuẩn bị cài/hoàn nguyên:** chỉ gắn UUID thật khi có hệ macOS ngoài, kiểm tra native và chuẩn bị khôi phục ngoại tuyến. Script hiện vẫn khóa. XeGfx tiếp tục riêng; chưa có phản hồi mới ở lần kiểm tra này.

Chỉ đề nghị boot tiếp khi có bản diagnostic với mốc rõ ràng hoặc thay đổi cụ thể có kết quả dự kiến. Không reset BIOS/NVRAM, không sửa ổ Windows. Kết quả hiện tại chưa xác định nguyên nhân EXITBS và chưa loại toàn bộ hướng Yoga.
