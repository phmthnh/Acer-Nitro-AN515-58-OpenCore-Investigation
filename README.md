# Acer Nitro AN515-58 — macOS boot investigation

Dự án nghiên cứu OpenCore/macOS Sequoia trên Acer Nitro AN515-58, i5-12500H,
16 GB RAM, Intel Iris Xe `8086:46A6`, RTX 3060 Laptop `10DE:2560`.

**Trạng thái 20/10/2026: máy thật chưa vào giao diện Recovery.**
Đây là hồ sơ điều tra và khôi phục, không phải EFI được chứng nhận hoạt động.

## Bằng chứng hiện có

- Log máy thật mới nhất kết thúc tại `EXITBS:START`; chưa có kernel panic xác định nguyên nhân.
- Đã thử EFI tối giản, `cpus=1`, các lựa chọn SetupVirtualMap và bản 1401 2.4.3.
- Dấu E008 trắng chỉ chứng minh entry trampoline chạy tới điểm vẽ; chưa chứng minh kernel nguyên bản chạy.
- QEMU/GDB theo dõi được 300 bước sau kernel entry rồi nhận panic
  `processor 0 already booted`. Đây là kết quả VM, không phải chẩn đoán Acer.

## Cấu trúc

- `docs/HISTORY.md`: lịch sử có đối chiếu bằng chứng.
- `docs/RESTORE.md`: vị trí backup nguyên trạng và cách kiểm tra trước khôi phục.
- `docs/NEXT.md`: phép thử tiếp theo và tiêu chí chấp nhận.
- `evidence/`: kết quả đã chọn, hash và danh mục log; không chứa bộ cài Apple.
- `configs/`: cấu hình đã xóa định danh, chỉ để so sánh; không dùng boot trực tiếp.
- `diagnostics/`: nguồn chẩn đoán để truy vết, không phải gói build độc lập.
- `tools/verify-backup.py`: kiểm tra bản sao nguyên trạng bằng SHA256.

## Backup và giới hạn

Git lưu hồ sơ nghiên cứu đã chọn. Bản sao nguyên trạng EFI/Recovery/log nằm ở
`boot-audit-20261020/snapshot/` trong workspace, được bỏ qua bởi Git.
Không commit serial/MLB/ROM/UUID, raw ACPI, ảnh chụp, firmware, Recovery DMG,
kernel dump hoặc dữ liệu tài khoản. Giữ thêm bản backup trên một thiết bị khác:
Git bundle trên cùng ổ chưa bảo vệ khỏi hỏng ổ.

## Nguồn tham khảo

- https://github.com/acidanthera/OpenCorePkg
- https://github.com/lzhoang2801/OpCore-Simplify
- https://github.com/nullmoth/1401
- https://github.com/b00t0x/WhateverXe
- https://dortania.github.io/OpenCore-Install-Guide/

Mã và sản phẩm bên thứ ba giữ nguyên giấy phép của tác giả. Repo này không
cấp lại giấy phép cho những thành phần đó. Chưa phát hành lên GitHub.
