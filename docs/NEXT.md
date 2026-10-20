# Bước tiếp theo

Ưu tiên sửa độ tin cậy của công cụ đo trước khi yêu cầu reboot Acer.

1. Kiểm chứng độc lập byte đầu pstart và kết quả stepi: entry+2, EDI bằng EAX
   sau `mov edi,eax`, dựa trên byte thực tế; dừng nếu byte khác.
2. Lưu địa chỉ và trạng thái trước/sau; gọi breakpoint là ARRIVED, không EXECUTED.
3. Tách lỗi ACPI dành cho Acer khỏi firmware QEMU trong một biến thể chỉ dùng VM.
   Không mang sửa ACPI của QEMU lên Acer.
4. Chỉ thiết kế probe máy thật sau khi kiểm chứng bảo toàn trạng thái CPU,
   nhánh khôi phục và khả năng quan sát framebuffer trên 4GB.

Không triển khai E008 cũ như một bản sửa. Chưa có kết luận lỗi máy thật.
