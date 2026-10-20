# Lịch sử có bằng chứng

| Mốc | Thay đổi / phép thử | Kết quả và giới hạn |
|---|---|---|
| 15/10/2026 | OpenCore tối giản, DSDT gốc, thử SetupVirtualMap | Log có cả VMAP=0 và VMAP=1; chưa vào Recovery |
| 15/10/2026 16:24 | Bản Clean108 CPU1 | Boot args trong log xác nhận cpus=1; vẫn EXITBS:START |
| 16–17/10 | Probe E004 tới E008 | Đo được các mốc chuyển chế độ; ảnh không chứng minh pstart hoàn tất |
| 17/10 | OpenCore độc lập R1/R2/R3, giao diện Tulips | Máy thật tiếp tục dừng; menu VM hoạt động không đồng nghĩa Recovery hoạt động |
| 20/10 | 1401 2.4.3 / OpenCore 1.0.9 | DEVMMIO=0, CpuTopologyRebuild, DSDT thay thế; log 18:40 vẫn EXITBS |
| 20/10 | Kiểm toán 160 tệp và 48 tệp log lịch sử | SHA256 backup khớp; 48 tệp có thể có bản sao trùng, không phải 48 thử nghiệm độc lập |
| 20/10 | Chạy QEMU/GDB mới | 300 stepi sau entry, Darwin 24.6.0, panic processor 0 already booted; VM chưa vào Recovery |

Các mốc được tổng hợp từ hồ sơ đã lưu, không tái tạo lịch sử Git giả.
Commit đầu tiên lưu trạng thái hiện có; các thay đổi sau mới có lịch sử Git trực tiếp.

## Những kết luận đã sửa

- `EXITBS:START` không tự xác định nguyên nhân treo.
- Kext được chèn thành công không chứng minh kext đã thực thi.
- GDB dừng tại breakpoint entry chưa chứng minh lệnh ở entry đã chạy.
- Ô trắng E008 xuất hiện trước phục hồi CR0/EFER/thanh ghi và nhảy về pstart.
- WhateverXe nhận diện 46A6 nhưng chưa có backend tự động riêng; chưa phải giải pháp cho lỗi này.
