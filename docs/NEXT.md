# Bước tiếp theo — cập nhật 22/10/2026

1. Review snapshot G: và manifest. Đây là bộ 1401 hiện có, khác EFI chẩn đoán
   tối giản mới dựng trong workspace chưa boot thử.
2. Map USB thật; UTBDefault chưa xác định cổng Kingston/Intel và giới hạn 15 port.
3. Chọn phép thử có config/hash/log riêng, không xác định nguyên nhân chỉ từ
   EXITBS:START hoặc warnings của compiler ACPI.
4. Lưu log OpenCore mới, ảnh/video màn laptop + HDMI, thời gian, BIOS, Recovery.
   Snapshot ngày 21/10 chưa có log boot mới trên máy thật.
5. Nếu tiếp tục probe kernel entry, phân biệt ARRIVED/EXECUTED và bảo toàn trạng
   thái CPU; không triển khai E008 cũ như bản sửa.
6. Chỉ thử driver GPU sau khi boot được cơ bản, giữ riêng kết quả tăng tốc.

Xem HELP-REQUEST.md, ACPI-ANALYSIS-20261021.md, HISTORY.md. Scripts diagnostics/
vẫn phụ thuộc lab/cache ngoài repo, chưa phải bộ VM/GDB tái dựng độc lập.
