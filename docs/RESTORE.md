# Khôi phục

Backup nguyên trạng: `boot-audit-20261020/snapshot/` trong workspace gốc.
Manifest: `boot-audit-20261020/manifest.json`.

1. Chạy `python tools/verify-backup.py boot-audit-20261020`.
2. Xác minh lại ổ đích bằng model, dung lượng và phân vùng; ký tự G: có thể đổi.
   Thiết bị đã chụp là Kingston SA400S37120G USB, 120034123776 byte.
3. Sao lưu EFI đang có trên thiết bị đích trước khi thay thế.
4. Chỉ khôi phục thư mục EFI lên phân vùng bộ cài đã xác minh.
   Không format, không dùng EFI của ổ Windows làm đích.
5. Đọc lại hash sau sao chép. Giữ log lần boot kế tiếp cùng manifest.

`configs/current-redacted.plist` đã xóa định danh, không phải bản khôi phục.
Git bundle lưu được nội dung đã commit, không chứa snapshot bị ignore.

Bản ZIP EFI nguyên trạng riêng tư: `project-backups/Acer-AN51558-EFI-private-20261020.zip`,
SHA256 trong `project-backups/EFI-private-sha256.txt`. ZIP chứa định danh của máy, không đưa vào GitHub công khai.
Bản ZIP này không chứa Recovery DMG; Recovery nằm trong snapshot đầy đủ.
