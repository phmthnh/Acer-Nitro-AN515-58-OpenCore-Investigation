# Nội dung nhờ hỗ trợ

Mình dùng Acer Nitro AN515-58, i5-12500H, 16 GB RAM, Iris Xe 46A6 và RTX 3060
Laptop 2560. BIOS V2.21. Màn hình trong nối Intel, HDMI nối NVIDIA theo Hardware
Sniffer. Bộ cài Kingston USB 120 GB; ổ đích macOS là Intel SATA USB 256 GB.

Máy thật chưa được xác nhận vào Recovery. Hồ sơ boot cũ dừng EXITBS:START;
panic `processor 0 already booted` chỉ có trong QEMU, không phải máy Acer.
Snapshot ngày 21/10 là EFI 1401/NullMoth 2.4.3 đang trên G:, kèm Recovery và
gói driver; chưa có log máy thật mới trong snapshot. Định danh SMBIOS, SSID và
mật khẩu Wi-Fi đã được che khỏi bản công khai.

Nhờ giúp review:

1. DSDT thay thế/SSDT, CpuTopologyRebuild + force-HT có cần thiết ở bước đầu không?
   Đề xuất cần dựa vào namespace/MADT của Acer, không dựa panic của QEMU.
2. XHCI khai báo 26 port logic, đang dùng UTBDefault. Cần map controller/port
   chứa ổ USB và thiết bị nội bộ trước khi kết luận lỗi CPU/storage.
3. Booter quirks có phù hợp với log MAT/memory map thực tế không? Hiện chưa có
   log mới để chọn một quirk cụ thể là nguyên nhân.
4. Hai SSDT gốc 10/12 giống byte và khai báo ADED: cần xác minh runtime có nạp
   trùng hay bỏ qua, không drop toàn bộ OEM Table ID ACRPRDCT.
5. Sau khi boot được macOS, hướng RTX qua HDMI cần giữ các power resource
   PEG1.PXP/Optimus; driver support list không tự chứng minh laptop này chạy được.

Khi đề xuất phép thử, mong ghi:

- File/config key nào đổi, giá trị trước và sau.
- Bằng chứng dẫn tới giả thuyết; dấu hiệu nào sẽ xác nhận/bác bỏ.
- Phiên bản OpenCore/Recovery/kext đi cùng lần thử.
- Không coi menu OpenCore, kext injection hay probe màu là Recovery đã chạy.

Lần boot tiếp theo cần quay/chụp cả màn laptop và HDMI, lưu thời gian và log
ở gốc phân vùng boot. Giữ snapshot cũ để so sánh; không ghi đè EFI Windows.
