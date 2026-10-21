# Config patch 22/10/2026 — chưa có kết quả boot

Đã kiểm tra config G: và các tệp được nó bật. Không thấy thiếu tệp kext/driver/ACPI
đang được tham chiếu hoặc sai thứ tự dependency kext đã chèn. Config đầu vào cũng
qua ocvalidate 1.0.8; việc qua validator không phát hiện mọi bất nhất ACPI/runtime.

## Hai vấn đề được sửa trong bản fixed

### 1. NVRAM boot-args không ghi đè giá trị cũ

Có `NVRAM/Add/7C436110-AB2A-4BBB-A880-FE41995C9F82/boot-args` nhưng thiếu
`boot-args` trong Delete cùng GUID. OpenCore chỉ thêm biến khi chưa có hoặc đã
xóa. Bản fixed thêm đúng tên này vào Delete; giữ nguyên chuỗi boot-args của bản
gốc, chưa tự đổi CPU/GPU/AMFI flags để thử quá nhiều biến cùng lúc.

### 2. DSDT thay thế chưa nhận các rename mà SSDT khác cần

OpenCore xử lý `ACPI/Delete → Quirks → Patch → Add`. DSDT trong Add thay thế
DSDT gốc, nên rename đã áp trên firmware DSDT ở bước Patch không tự đi vào tệp
DSDT mới nạp. Tệp G:/EFI/OC/ACPI/DSDT.aml có:

- 1 mẫu `14 5F 53 54 41` (_STA của GPI0), không có mẫu XSTA tương ứng;
- 31 chuỗi `_OSI`, không có `XOSI`.

Trong khi đó SSDT-GPI0 tạo `\_SB.GPI0._STA` và tham chiếu `\_SB.GPI0.XSTA`.
Tức là cấu hình khai báo hai _STA trong nhánh này nhưng method đích XSTA chưa có
trong DSDT thay thế. Các lời gọi _OSI trong DSDT cũng chưa đi qua SSDT-XOSI.
Đây là bất nhất được xác định tĩnh; chưa có log chứng minh nó là nguyên nhân
treo EXITBS hay chứng minh cách macOS xử lý namespace trùng trên máy thật.

Bản sửa tạo **DSDT-GPI0-XOSI.aml** từ chính DSDT thay thế đang dùng, không thay
bằng DSDT của máy khác và không compile lại toàn DSDT để triển khai:

1. Áp trước đúng 1 rename GPI0 `_STA → XSTA` đã có trong config.
2. Áp trước 31 rename `_OSI → XOSI` đã có trong config.
3. Tính lại checksum header. Chiều dài giữ nguyên 478.789 byte, chỉ 33 byte thay
   đổi gồm các tên và checksum. Giữ nguyên các chỉnh sửa forward-scope cũ.
4. Sửa duy nhất Path/Comment của entry DSDT trong ACPI/Add sang tệp mới.

Các patch firmware trong ACPI/Patch vẫn giữ nguyên, để xử lý các bảng firmware
khác trước bước Add. DSDT gốc trên G: được giữ nguyên để khôi phục/đối chiếu.

## Bản thử CPU tùy chọn

`config-diag-noCTR.plist` dựa trên fixed, chỉ thay nhóm CPU:

- Tắt CpuTopologyRebuild.
- Tắt ba entry force-HT (các entry có khoảng Darwin khác nhau).
- Bỏ `ctrsmt=full`; giữ CPUID spoof và ProvideCurrentCpuInfo=True.

Đây là phép thử chẩn đoán riêng, **không được tự động dùng làm config mặc định**.
README CpuTopologyRebuild có ghi nhận khả năng lỗi boot khi verbose; chưa chứng
minh điều đó xảy ra trên Acer này. Không coi tên file là bảo đảm boot được.

## Những thứ chưa thể sửa chỉ bằng config

| Vấn đề | Kết luận / bước cần làm |
|---|---|
| USBToolBox + UTBDefault, XHCI khai báo 26 cổng | Cần map cổng Windows thực tế để tạo UTBMap. Không bật XhciPortLimit ngẫu nhiên. |
| SYNA7DB5 | VoodooRMI hỗ trợ đúng ID này. Không bật thêm VoodooI2CHID đồng thời chỉ vì thấy file chưa được nạp. |
| Bản trùng ADED trong ACPI dump | Chưa xác nhận chính sách nạp trùng của macOS. Không thêm Delete theo OEM Table ID rộng. |
| Driver Xe / RTX | Chưa có boot cơ bản. Không thêm WhateverXe cho 46A6 hoặc hứa tăng tốc bằng device-id spoof. |
| Layout-id=21 / ALC287 / SST | Chưa kiểm chứng audio runtime, không đổi layout chỉ dựa tên codec. |
| SetupVirtualMap / DevirtualiseMmio / memory quirks | Giữ nguyên để phép thử tập trung. Cần log MAT/UEFI memory map mới để quyết định. |
| OpenCore version | Binary trên G: có marker DBG-XXX-YYYY-MM-DD; chưa chứng minh đúng version/build bằng log. Không gọi ocvalidate 1.0.8 là kiểm chứng binary 1.0.9. |
| SIP/AMFI/NVIDIA boot args | Bản fixed giữ giá trị hiện có. Sau khi boot cần cấu hình lại theo driver thực sự dùng. |

## Kiểm tra đã thực hiện

- Hai config qua ocvalidate 1.0.8 không báo lỗi schema.
- Mọi tệp được config bật đều tồn tại; checksum/chiều dài ACPI hợp lệ.
- Đã giải mã DSDT mới, xác nhận GPI0.XSTA và XOSI xuất hiện đúng phép đổi tên.
- Compile nguồn giải mã dùng làm phép kiểm tra đọc/ghi AML, không đưa AML compile
  lại vào EFI. Không có kiểm chứng runtime/Recovery sau patch.
- Bản config công khai đã che định danh; bản dùng trên G: giữ định danh riêng.

## Dùng và khôi phục

Trên G:, config.plist mặc định được thay bằng fixed sau khi sao lưu. File DSDT
mới nằm trong ACPI, tệp DSDT.aml cũ vẫn còn. Không đổi OpenCore.efi, OpenRuntime,
kext binaries, phân vùng hay bộ cài. Chỉ boot từ G: để thử; chụp màn hình và lưu
log mới trước khi thử profile noCTR. Khi thay profile, đổi tên bản được chọn thành
EFI/OC/config.plist. Mọi profile ở đây đều dùng DSDT-GPI0-XOSI.aml.

Khôi phục từ bản backup riêng đã lưu trong workspace: chép config.plist cũ về
EFI/OC/config.plist. Vì DSDT.aml cũ còn nguyên, nó sẽ lại được config cũ tham chiếu.
Không dùng bản config đã che định danh trên GitHub như backup riêng.

Snapshot ZIP ngày 21/10 và thư mục drive-G/ trong repo vẫn là bằng chứng trước
patch, không bị ghi đè. Các file mới ở configs/patch-20261022/ có manifest riêng.

## Nguồn đối chiếu

- [OpenCore Reference Manual: ACPI order, DSDT Add, NVRAM Add/Delete](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Configuration.tex)
- [VoodooRMI: SYNA7DB5, I2C requirements](https://github.com/VoodooSMBus/VoodooRMI)
- [CpuTopologyRebuild: supported CPUs and known verbose issue](https://github.com/b00t0x/CpuTopologyRebuild)
