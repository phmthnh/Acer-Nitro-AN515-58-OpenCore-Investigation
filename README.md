# Acer Nitro AN515-58 — OpenCore/macOS boot investigation

**Snapshot ngày 21/10/2026, tài liệu cập nhật 22/10/2026: máy thật chưa được xác nhận vào giao diện macOS Recovery.**

Repo này giúp bạn bè xem cấu hình, các tệp bộ cài và bằng chứng để tìm lỗi.
Đây **không phải EFI đã cài thành công**, chưa có kết luận nguyên nhân treo.

**English:** Support/evidence repository for an Acer Nitro AN515-58 (i5-12500H,
Iris Xe 46A6, RTX 3060 Laptop 2560). Physical hardware has not been confirmed to
reach Recovery. The G: snapshot is the existing 1401 setup, not the new minimal
diagnostic EFI. SMBIOS identifiers and Wi-Fi credentials have been redacted.

## Bắt đầu ở đâu?

1. [Config đang trên G:](drive-G/EFI/OC/config.plist) và [bản tóm tắt](evidence/drive-G-config-summary.json).
2. [System-profile 1401](drive-G/NullMoth/system-profile.json) và [phân tích đủ 43 tệp ACPI gốc](docs/ACPI-ANALYSIS-20261021.md).
3. [Các câu hỏi cần hỗ trợ](docs/HELP-REQUEST.md) và [lịch sử thử nghiệm](docs/HISTORY.md).
4. [Tải toàn bộ snapshot G: ở Releases](https://github.com/phmthnh/Acer-Nitro-AN515-58-OpenCore-Investigation/releases/tag/drive-g-20261021).

## Phần cứng đã xác minh

| Thành phần | Thông tin |
|---|---|
| Máy | Acer Nitro AN515-58, bản người dùng gọi 90U2 |
| CPU / RAM | Intel Core i5-12500H, Alder Lake-H, 16 GB RAM |
| BIOS | Insyde **V2.21**, ngày 09/06/2026; khớp Report.json, WMI và chuỗi trong bảng UEFI |
| iGPU | Intel Iris Xe `8086:46A6`, `\_SB.PC00.GFX0` |
| dGPU | RTX 3060 Laptop 6 GB, `10DE:2560`, `\_SB.PC00.PEG1.PEGP` |
| Màn hình trong | BOE0ABF 1920×1080; báo cáo phần cứng ghi nối Intel |
| HDMI | VA2414-FHD; báo cáo phần cứng ghi nối NVIDIA |
| LAN / Wi-Fi | Killer E2600 `10EC:2600`; AX1650i `8086:51F0` |
| Audio / touchpad | Realtek ALC287, Intel SST; Synaptics `SYNA7DB5` I2C |
| Ổ bộ cài | Kingston SA400S37120G, USB, 120.034.123.776 byte |
| Ổ đích dự kiến | Intel SS DSCKKF256G8 SATA qua USB, 256.060.514.304 byte (~238,47 GiB) |

G: lúc chụp có nhãn `1401`, FAT32, dung lượng ~16 GiB, nằm trên Kingston.
Số Disk/ký tự ổ có thể đổi; không dùng chúng làm định danh cố định khi ghi ổ.

## Trạng thái boot: điều đã biết và giới hạn

| Bằng chứng | Điều có thể kết luận | Giới hạn |
|---|---|---|
| Hồ sơ boot máy thật trước đây | Log kết thúc `EXITBS:START` | Chưa có panic máy thật xác định nguyên nhân |
| Đã thử tối giản, cpus=1, SetupVirtualMap 0/1, 1401 2.4.3 | Các hướng này đã được thử theo hồ sơ cũ | Không coi đổi lại cùng tùy chọn là bản sửa đã chứng minh |
| Ô trắng probe E008 | Trampoline tới đoạn vẽ | Chưa chứng minh kernel gốc chạy thành công |
| QEMU/GDB: 300 bước, panic processor 0 already booted | Kết quả trong VM đã can thiệp trạng thái CPU | **Không phải panic thu từ Acer** |
| Snapshot G: ngày 21/10 | Đủ 163 tệp bộ cài/support đọc được | Không có log boot mới trong snapshot |
| Phân tích ACPI mới | Đã kiểm tra checksum, namespace, compile | Phân tích tĩnh không thay thế boot máy thật |

Một số bằng chứng cũ chỉ còn manifest/hash hoặc hồ sơ tổng hợp; repo chưa chứa
đủ nội dung log nguyên bản. Không coi hash là log có thể đọc.
[Bằng chứng VM](evidence/post-entry-proof.json), [bước tiếp theo](docs/NEXT.md).

## G: đang chứa cấu hình nào?

`drive-G/` là **bộ 1401/NullMoth 2.4.3 hiện có trên Kingston**:

- Nạp DSDT thay thế 478.789 byte; DSDT gốc của báo cáo phần cứng là 478.755 byte.
  Comment config mô tả xử lý forward scopes; chưa chứng minh sửa được Acer.
- Có SSDT EC, GPI0, MCHC, PLUG-ALT, RTCAWAC, SBUS, USB-Reset, USBX, XOSI.
- CpuTopologyRebuild bật, `ctrsmt=full`, patch ép HT, `ProvideCurrentCpuInfo=True`.
- `SetupVirtualMap=True`, `DevirtualiseMmio=False`, `EnableWriteUnprotector=False`,
  `RebuildAppleMemoryMap=True`, `SyncRuntimePermissions=True`.
- Có WhateverGreen; boot args chứa `nvfb`, `nvaccel`, AMFI và `gfxrst=4`.
- USBToolBox + UTBDefault; **chưa có USB map đã kiểm chứng**.
- Gói driver/app Mac nằm ở NullMoth; có file cài không chứng minh RTX đã nạp driver/tăng tốc.

Một EFI chẩn đoán tối giản khác đã được dựng riêng trong workspace ngày 21/10,
qua ocvalidate và kiểm tra Recovery image, nhưng **chưa boot thử trên Acer**.
Nó chưa được ghi lên G: và không nằm trong snapshot này. Không trộn kết quả
kiểm tra của bản đó với bộ 1401 đang chia sẻ.

## Phân tích ACPI đáng chú ý

- 43 tệp gốc: 42 header/checksum/chiều dài hợp lệ; `$h2o.aml` rỗng.
- 25 AML (DSDT + 24 SSDT) giải mã và compile lại: 0 errors, 236 warnings.
  Warnings chưa phải bằng chứng lỗi boot; AML compile lại không đưa lên bộ cài.
- MADT có 16 luồng bật, UID 0/APIC 0 hợp lệ. Mục CPU mẫu và APIC tắt
  không được coi là CPU đang chạy hoặc nguyên nhân panic QEMU.
- ssdt10/ssdt12 gốc giống từng byte, cùng tạo ADED. Chưa xác nhận macOS nạp
  trùng hay bỏ qua và chưa chứng minh quan hệ với EXITBS.
- XHCI khai báo 26 cổng logic, TXHC thêm 5; cần map cổng thật.
- RTC/AWAC dùng STAS; EC0 thật phục vụ pin/thermal; NVIDIA có Optimus/power riêng.
  Không drop hàng loạt SSDT chỉ vì cùng OEM Table ID.

[Báo cáo từng file và giới hạn](docs/ACPI-ANALYSIS-20261021.md).
[Các bản .dsl](docs/acpi-audit/decoded) chỉ để đọc mã, **không phải SSDT để chép vào EFI**.
Khóa Windows MSDM không được đưa vào tài liệu công khai.

## Tải đầy đủ các tệp bộ cài G:

Git lưu tệp nhỏ để xem diff. Hai tệp trên 100 MiB — BaseSystem.dmg và
nullmoth-nvidia-2.4.3.tar.gz — nằm trong ZIP Releases thay vì Git history.

- [Release snapshot G:](https://github.com/phmthnh/Acer-Nitro-AN515-58-OpenCore-Investigation/releases/tag/drive-g-20261021)
- Asset `Acer-Nitro-drive-G-20261021-redacted.zip`: đủ **163 tệp payload**, giữ
  cấu trúc EFI/, NullMoth/, com.apple.recovery.boot/, thêm SNAPSHOT-MANIFEST.json.
- [Manifest từng tệp](evidence/drive-G-20261021-manifest.json): size, SHA256 nguồn,
  SHA256 bản chia sẻ, trường đã che và tệp có trong Git hay chỉ trong ZIP.
- [SHA256 ZIP](evidence/drive-G-release.json); Releases có SHA256SUMS.txt.
- Hai tệp metadata Windows trong System Volume Information không được đóng gói.

Đã che **11 trường SMBIOS/SSID/mật khẩu Wi-Fi** trong bản chia sẻ; G: gốc không bị sửa.
ZIP không phải bản byte-for-byte toàn ổ, không giữ layout phân vùng và chưa sẵn sàng
boot với các định danh đã che. Hash efi_sha256 trong profile 1401 mô tả nguồn
ban đầu; kiểm tra bản chia sẻ bằng published_sha256 trong manifest.

## Mong bạn bè hỗ trợ

Mục tiêu đầu tiên: xác định giai đoạn treo và vào Recovery; sau đó mới thử GPU.
Nhờ review ACPI/CPU/USB và boot memory handoff, ghi rõ file, thay đổi, lý do,
log mong đợi. Mỗi lần chỉ thay một nhóm biến và giữ log mới.

Không cần chia sẻ serial/MLB/UUID thật, Wi-Fi, khóa Windows hay tài khoản Apple.
Repo chưa xác nhận RTX 3060 Laptop hoặc Iris Xe 46A6 hoạt động.
[Mẫu mô tả nhờ hỗ trợ](docs/HELP-REQUEST.md).

## Nguồn tham khảo

- [OpenCorePkg](https://github.com/acidanthera/OpenCorePkg), [OpCore-Simplify](https://github.com/lzhoang2801/OpCore-Simplify)
- [1401](https://github.com/nullmoth/1401), [NullMoth NVIDIA driver](https://github.com/nullmoth/nvidia-macos-driver)
- [WhateverXe](https://github.com/b00t0x/WhateverXe), [graphics payload](https://github.com/b00t0x/WhateverXe-Graphics)
- [Thử nghiệm Iris Xe trên Dell XPS](https://github.com/JulioNectar/Hackintosh-XPS13Plus-IrisXe-Tahoe)
- [Dortania OpenCore Install Guide](https://dortania.github.io/OpenCore-Install-Guide/)

Thành phần bên thứ ba giữ nguyên quyền/giấy phép tác giả. Repo điều tra không cấp
lại giấy phép cho OpenCore, kexts, bộ cài Apple hoặc bộ NullMoth.
