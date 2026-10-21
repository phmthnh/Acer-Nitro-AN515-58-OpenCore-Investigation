# Lịch sử có bằng chứng

## Patch config 22/10/2026

- Sửa NVRAM/Delete để boot-args mới ghi đè biến cũ nếu có.
- Theo thứ tự Patch trước Add của OpenCore, DSDT thay thế chưa nhận GPI0/XOSI
  rename. Tạo DSDT-GPI0-XOSI.aml với đúng các rename đó, cập nhật config tham chiếu.
- Giữ nguyên chiều dài AML, sửa 33 byte gồm tên/checksum; không triển khai AML
  recompile. Validator và kiểm tra tĩnh đạt, chưa có kết quả boot Acer sau patch.
- Profile noCTR tạo riêng để thử CPU, không tự kích hoạt; USB map vẫn chưa có.
- Snapshot G: 21/10/Release giữ nguyên; bản config mới ở configs/patch-20261022.

## Cập nhật snapshot 21/10/2026

- Đọc Report.json và đủ 43 tệp ACPI gốc; BIOS V2.21 được đối chiếu WMI và bảng UEFI.
- Kiểm tra tĩnh: 42 header/checksum hợp lệ, một tệp rỗng; 25 AML compile lại
  không có errors. Chưa có boot runtime mới.
- Dựng riêng EFI chẩn đoán trong workspace, qua ocvalidate; chưa ghi lên G:.
- Chụp đủ 163 tệp bộ cài/support trên G: nhãn 1401, thuộc Kingston 120 GB.
  Hai tệp metadata Windows trong System Volume Information không đưa vào gói.
- Snapshot vẫn là bộ có DSDT thay thế/1401 2.4.3, không có log boot mới trên ổ.
- GitHub che 11 trường định danh/SSID/mật khẩu Wi-Fi; ZIP Releases giữ đủ payload
  đã che, gồm hai tệp lớn không đưa vào Git history. G: gốc không bị sửa.

Các đường dẫn backup ngày 20/10 bên dưới là vị trí lịch sử, cần kiểm tra còn tồn tại.
Snapshot mới và manifest ngày 21/10 là nguồn đối chiếu bổ sung.

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

## Kiểm tra sau entry bổ sung

Đã chạy GDB mới với guard byte 89c7, kiểm tra RIP=entry+2 và EDI=EAX trước bước. Passed trong VM rồi theo dõi thêm 300 bước. Panic VM vẫn processor 0 already booted. Chưa có bản probe mới triển khai máy thật; xem evidence/post-entry-proof.json. Lần đầu guard từ chối opcode mong đợi sai 89d8, đã sửa theo dump thực tế.
