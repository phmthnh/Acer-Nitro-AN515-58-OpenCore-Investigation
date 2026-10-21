**Phân tích ACPI Acer Nitro AN515-58 — 21/10/2026**

Nguồn: `%USERPROFILE%\Downloads\OpCore-Simplify-main\OpCore-Simplify-main\SysReport\ACPI`.
Phạm vi: phân tích tĩnh toàn bộ 43 tệp; không sửa thư mục nguồn, EFI đã dựng hoặc ổ đĩa.
Đây không phải báo cáo kernel panic và không xác nhận EFI boot thành công.

**Kết quả kiểm tra**

- 42 tệp không rỗng: header có chiều dài đúng và checksum hợp lệ; `$h2o.aml` rỗng.
- 25 bảng AML (DSDT + 24 SSDT) được giải mã; có 24 nội dung AML khác nhau do ssdt10=ssdt12.
- Giải mã có external references: chạy iASL riêng từng target với các bảng khác làm external,
  bỏ bản trùng chỉ trong danh sách external; 24/24 nội dung khác nhau giải mã trả mã 0.
- Recompile 25 nguồn AML: 0 errors; tổng 236 warnings. DSDT có 187 warnings.
  Compiler là ACPICA iASL 20251212. Compile thành công không chứng minh namespace/runtime trên macOS đúng.
- Nguồn recompile dùng để chẩn đoán; không chép AML recompile vào EFI. Compiler thay đổi
  tối ưu và kích thước: DSDT từ 478.755 byte gốc thành 474.894 byte, không tương đương byte-for-byte.
- Không chạy `_INI`, `_DSM`, `_PS3`, `_ON/_OFF`, WMI hay SMI methods trên phần cứng.
- MSDM được giữ cục bộ trong raw backup; không giải mã nội dung khóa Windows ra báo cáo.

**Nhận định có ảnh hưởng trực tiếp đến hướng thử boot**

1. **Chưa thấy bằng chứng MADT bị sai CPU đầu tiên.** Có 32 bản ghi LAPIC nhưng chỉ 16 bật.
   UID 0/APIC 0 bật. UID bật 0–15 ánh xạ APIC: 00,01,08,09,10,11,18,19,20,22,24,26,28,2A,2C,2E (hex).
   UID 16–31 tắt, APIC FF. Không coi các APIC FF đã tắt là CPU trùng đang chạy.
   Bố trí này phù hợp 16 luồng của i5-12500H; APIC ID có khoảng trống là hợp lệ.
   DSDT/ssdt3 chứa PR00–PR63 là template. Không suy từ đó máy đang bật 64 CPU.
   Vì CPU khai báo bằng Device ACPI0007, PLUG-ALT có cơ sở; nguồn OpenCore cũng mô tả đúng kiểu này.
   Bản PLUG-ALT vừa dựng thêm 64 Processor compatibility objects theo template;
   đó chưa phải bằng chứng lỗi, và không tự sửa thành CPU0/APIC khác nếu chưa có log.

2. **Bản trùng ssdt10/ssdt12 là phát hiện xác định trong bộ file.** Cả hai 86 byte,
   cùng SHA256, cùng tạo `\_SB.PC00.ADED` với HID `10251517` không có điều kiện.
   Phân tích namespace chung ban đầu báo `AE_ALREADY_EXISTS` tại ADED.
   Chưa xác minh macOS có nạp cả hai hay bỏ qua bảng giống nhau, cũng chưa có mapping
   địa chỉ XSDT cho từng file. Chưa được gọi đây là nguyên nhân kẹt EXITBS.
   23/24 SSDT có OEM Table ID ACRPRDCT; riêng ssdt6 là TcssSsdt. Drop theo ACRPRDCT
   có thể loại nhầm rất nhiều bảng. Không thêm ACPI Delete rộng để xử lý bản trùng.

3. **RTC/AWAC có cơ chế lựa chọn rõ.** `\_SB.AWAC._STA` bật khi STAS=0;
   `\_SB.PC00.LPCB.RTC._STA` bật khi STAS=1. STAS là field của GNVS, giá trị thật
   không nằm trong file AML. SSDT-RTCAWAC đã dựng đặt STAS=1 dưới Darwin, phù hợp logic này.
   RTC đã có sẵn, không cần tạo RTC0 chỉ vì máy mới. I/O RTC=70–77, IRQ8.

4. **EC thật phải được giữ.** EC0 tại `\_SB.PC00.LPCB.EC0`, HID PNP0C09,
   I/O 62/66, GPE 6E, có `_REG`, pin và thermal phụ thuộc nó. Có cả SystemMemory
   ECMM tại FE0B0800 lẫn EmbeddedControl ERAM. ERAM trực tiếp thấy hai field 8-bit;
   các field lớn ở ECMM không đủ để kết luận cần patch pin kiểu chia field EC.
   Fake EC đang dựng là EC/ACID0001 riêng, chỉ hiện dưới Darwin, giữ EC0 thật.

5. **USB cần map trước khi coi EFI là cấu hình hoàn chỉnh.** XHCI chính khai báo
   HS01–HS14, USR1/USR2, SS01–SS10: tổng 26 cổng logic. TXHC trong ssdt6 có
   HS01 + SS01–SS04: 5 cổng logic khác. Nhiều nhánh _UPC/_PLD lấy dữ liệu NVS/UCSI.
   Không phải cả 26 đều là cổng vật lý đang dùng. Chỉ từ AML chưa chọn đúng 15 port
   hay biết ổ Kingston nằm trên controller/port nào. UTBDefault hiện là phương án tạm;
   cần map thực tế với USBToolBox, có đủ đầu USB2/USB3 và thiết bị nội bộ.

6. **Đường NVIDIA phụ thuộc ACPI power của laptop.** GFX0 và PEG1.PEGP là hai nhánh
   khác nhau. ssdt16 quản lý PEG1.PXP; ssdt18._PS3 có nhánh gọi PXP._OFF,
   _PS0 có nhánh gọi PXP._ON. Có Optimus DSM và NVPCF; không giống hoàn toàn desktop.
   Không dùng SSDT-DGPU-OFF nếu muốn thử RTX qua HDMI. Mối nối HDMI→RTX được
   xác nhận từ Hardware Sniffer Report.json; chỉ các DDxx/LCD0 trong ACPI không đủ
   để kết luận mọi đầu ra vật lý nối như thế nào. Màn hình HDMI có thể chưa có hình
   ở giai đoạn chỉ dùng EFI framebuffer và chưa nạp driver.

7. **Touchpad không phải lỗi cần giải quyết trước kernel boot.** GPI0 HID INTC1055,
   _STA trả 0F khi GPHD!=1 và 08 khi GPHD=1. Các nhánh I2C/TPD0 và package TPID
   chứa SYNA7DB5, phù hợp report. Nhánh OEM còn có I2C1.TPAD; giá trị chọn device
   lấy từ NVS. _OSI Windows tác động OSYS, GPIO/I2C và power policies.
   DSDT không có nhánh Darwin riêng trong chuỗi chọn OSYS này. Không giả định
   phải ép _STA=0F hoặc rename mọi _STA; chọn VoodooI2C/HID theo thiết bị thật
   sau khi đã quan sát namespace/runtime. Keyboard là PS2 riêng.

8. **DMAR không phải UEFI memory map.** Có DRHD FED90000/FED91000 và RMRR
   4C000000–507FFFFF cho Intel 00:02.0. Giữ DisableIoMapper cho phép thử hiện tại
   là lựa chọn cấu hình, không phải kết luận DMAR gây treo. Bộ ACPI không chứa
   UEFI MAT/GetMemoryMap, CPUID/MSR runtime, CFG-Lock thật, trạng thái BAR thật
   hay log handoff kernel. Không suy ra EnableWriteUnprotector/SetupVirtualMap
   đúng hay sai chỉ từ các bảng này.

9. **Audio và sleep là phần cần kiểm chứng sau.** NHLT cho thấy DMIC/SSP DSP;
   không chứng minh layout-id=21 đúng hay microphone hoạt động. FADT Low Power S0 Idle=0,
   DSDT có SS3=1 và _S3 được khai báo theo SS3. Có đường S3 trong firmware nhưng
   chưa chứng minh sleep/wake của macOS hay RTX hoạt động ổn.

**Cảnh báo compiler được phân loại**

236 warnings không phải 236 lỗi boot. Phần lớn (204) là method có nhánh không return;
14 switch mặc định Integer, 8 thiếu quan hệ _PRS/_SRS, 4 gọi method có thể không return,
3 device có cả _HID/_ADR, và ba cảnh báo đơn khác. Ví dụ ssdt18 có
`\_SB.NPCF._DSM` không return khi UUID không khớp hoặc NPCS=0. Đây là ứng viên
chỉ khi driver gọi đúng method/nhánh đó; không phải bằng chứng panic sớm.
Compiler còn in bộ đếm external unresolved bị underflow (4294967041) ở DSDT;
đó không phải hàng tỷ object thiếu thật. Mọi nguồn đã được kiểm tra compile riêng.

**Danh mục từng file**

Trong cột compile, `0E/187W` nghĩa là 0 errors/187 warnings; `data` là bảng dữ liệu,
không phải AML. Diễn giải là chức năng thấy trong bảng, không cam kết driver macOS hỗ trợ.


| Tệp | Byte | Loại / compile | Nội dung | Ý nghĩa / xử lý |
|---|---:|---|---|---|
| `$h2o.aml` | 0 | rỗng | Tệp rỗng, không có header để giải mã. | Không phải SSDT có thể nạp. Chưa biết do bộ xuất hay bảng riêng Insyde; không suy ra toàn bộ ACPI bị hỏng. |
| [apic.aml](acpi-audit/decoded/apic.dsl) | 476 | data | MADT: 32 bản ghi Local APIC; 16 bật, 16 tắt; IOAPIC và NMI. | UID 0/APIC 0 đang bật; không có APIC ID trùng trong 16 bản ghi bật. Giữ bảng gốc. |
| [bgrt.aml](acpi-audit/decoded/bgrt.dsl) | 56 | data | Boot Graphics Resource Table, dữ liệu ảnh/logo firmware. | Không phải driver GPU hay bảng tăng tốc Metal. |
| [dbg2.aml](acpi-audit/decoded/dbg2.dsl) | 84 | data | Một mô tả debug port, SystemIO 0x3F8. | Mô tả firmware không chứng minh laptop có cổng UART vật lý nối ra ngoài. |
| [dbgp.aml](acpi-audit/decoded/dbgp.dsl) | 52 | data | Debug port dạng cũ, SystemIO 0x3F8. | Không bật debug serial chỉ dựa vào bảng này. |
| [dmar.aml](acpi-audit/decoded/dmar.dsl) | 136 | data | Hai DRHD tại FED90000/FED91000; một RMRR cho PCI 00:02.0. | RMRR 4C000000–507FFFFF, 72 MiB. Đây là DMA remapping, không phải UEFI MAT/memory map. |
| [dsdt.aml](acpi-audit/decoded/dsdt.dsl) | 478,755 | 0E/187W | Bảng chính: chipset, 64 CPU Device, EC, RTC/AWAC, PCIe, iGPU, XHCI, I2C, pin, sleep. | 98.008 dòng bản giải mã riêng; compile từ nguồn đã resolve: 0 lỗi, 187 cảnh báo. Không thay bằng bản recompile để boot. |
| [facp.aml](acpi-audit/decoded/facp.dsl) | 276 | data | FADT revision 6, minor 3; PM profile Mobile, SCI 9; S0-idle flag=0. | X_PM1a_EVT=1800, X_PM1a_CNT=1804, PM timer=1808; trường legacy 0 không có nghĩa thiếu PM registers. |
| [fpdt.aml](acpi-audit/decoded/fpdt.dsl) | 68 | data | Firmware Performance Data Table. | Số liệu boot/resume firmware; không xác định điểm treo macOS hiện tại. |
| [hpet.aml](acpi-audit/decoded/hpet.dsl) | 56 | data | HPET tại FED00000. | Đối chiếu khớp địa chỉ mặc định HPET trong DSDT; chưa có bằng chứng cần FixHPET. |
| [lpit.aml](acpi-audit/decoded/lpit.dsl) | 204 | data | Ba descriptor native C-state/low-power idle; descriptor cuối có flag Disabled. | Không suy ra macOS sleep hoạt động chỉ từ việc có LPIT. |
| [mcfg.aml](acpi-audit/decoded/mcfg.dsl) | 60 | data | PCIe ECAM base C0000000, segment 0, bus 00–FF. | Giữ bảng gốc; không phải bảng BAR runtime riêng của RTX. |
| `msdm.aml` | 85 | data | Bảng cấp phép Windows OEM, có dữ liệu khóa sản phẩm. | Chỉ kiểm tra header/chiều dài/checksum; không xuất khóa vào báo cáo hay bản giải mã. |
| [nhlt.aml](acpi-audit/decoded/nhlt.dsl) | 7,010 | data | Ba endpoint: DMIC 8086:AE20 và hai hướng SSP 8086:AE30. | Xác nhận có đường âm thanh DSP/DMIC; không chứng minh AppleALC hỗ trợ mic hoặc layout-id nào đúng. |
| [phat.aml](acpi-audit/decoded/phat.dsl) | 2,631 | data | Platform Health Assessment, dữ liệu phiên bản/sức khỏe firmware. | Không phải phương thức AML điều khiển tiến trình boot macOS. |
| [tpm2.aml](acpi-audit/decoded/tpm2.dsl) | 76 | data | TPM 2.0 description, địa chỉ/kiểu giao tiếp firmware. | Khác ssdt11: đây là data table, không phải source AML. |
| [uefi.aml](acpi-audit/decoded/uefi.dsl) | 566 | data | Bảng UEFI/Insyde, payload có chuỗi V2.21. | Độc lập xác nhận phiên bản BIOS trong bộ dump; không suy ra Secure Boot hay MAT từ chuỗi này. |
| [wsmt.aml](acpi-audit/decoded/wsmt.dsl) | 40 | data | Windows SMM Security Mitigations Table, protection flags=7. | Đây là tuyên bố của firmware, không phải kết quả kiểm chứng các mitigation. |
| [xsdt.aml](acpi-audit/decoded/xsdt.dsl) | 364 | data | 41 con trỏ bảng 64-bit, tất cả địa chỉ khác nhau. | Không có mapping địa chỉ vật lý→tên tệp trong dump, chưa thể khẳng định đầy đủ mọi bảng đã xuất. |
| [ssdt.aml](acpi-audit/decoded/ssdt.dsl) | 14,822 | 0E/1W | Intel IETM/thermal framework: IETM, TCPU, TPCH, EC0.SEN2/SEN3. | Giữ mặc định; chỉ cân nhắc cô lập khi có lỗi ACPI liên quan cụ thể. |
| [ssdt1.aml](acpi-audit/decoded/ssdt1.dsl) | 908 | 0E/0W | PMAX, HID INT3533; các ngân sách/giới hạn thành phần. | Phần quản lý điện năng nền tảng; không phải GPU driver. |
| [ssdt2.aml](acpi-audit/decoded/ssdt2.dsl) | 262 | 0E/0W | OperationRegion COMP và các field dữ liệu CPU/chính sách firmware. | Địa chỉ RAM 43914018 là con trỏ runtime của bản dump; không dùng làm hằng cho BIOS khác. |
| [ssdt3.aml](acpi-audit/decoded/ssdt3.dsl) | 23,842 | 0E/0W | Mở rộng PR00–PR63: _PDC/_OSC, C-state/P-state/capability. | 64 mục là mẫu firmware; số luồng bật phải đọc từ MADT. |
| [ssdt4.aml](acpi-audit/decoded/ssdt4.dsl) | 11,042 | 0E/4W | PCIe PEG0–PEG3: hotplug, power resource, trạng thái endpoint. | Liên quan PEG1/RTX; không xóa cả bảng để tắt một thiết bị. |
| [ssdt5.aml](acpi-audit/decoded/ssdt5.dsl) | 13,267 | 0E/0W | iGPU GFX0, các đầu ra DD01–DD0F/DD1F/DD2F, brightness/display power. | Các object đầu ra không chứng minh tất cả connector đều có dây vật lý hoặc được macOS hỗ trợ. |
| [ssdt6.aml](acpi-audit/decoded/ssdt6.dsl) | 54,071 | 0E/20W | Intel TCSS: TXHC, TXDC, TDM0/1, TRP0–3; USB-C/Thunderbolt. | TXHC có 5 cổng logic khai báo; cần phân biệt với XHCI chính. |
| [ssdt7.aml](acpi-audit/decoded/ssdt7.dsl) | 2,381 | 0E/2W | Mở rộng EC0, CFUN/firmware interface và đọc các field pin. | Phụ thuộc EC0; không tắt EC thật như cách xử lý một số desktop. |
| [ssdt8.aml](acpi-audit/decoded/ssdt8.dsl) | 51 | 0E/0W | Chỉ khai báo CMPW: SystemMemory 4093BA98, dài 0x200. | Tệp 51 byte nhưng hợp lệ, không phải bị cắt cụt. |
| [ssdt9.aml](acpi-audit/decoded/ssdt9.dsl) | 4,707 | 0E/1W | UBTC/CR01, UCSI USB Type-C, _UPC/_PLD và RUCC. | ssdt19 gọi các phương thức của bảng này. |
| [ssdt10.aml](acpi-audit/decoded/ssdt10.dsl) | 86 | 0E/0W | Khai báo _SB.PC00.ADED, HID 10251517. | Giống hệt ssdt12 từng byte; tạo cùng namespace object. |
| [ssdt11.aml](acpi-audit/decoded/ssdt11.dsl) | 1,915 | 0E/0W | TPM: device, resource và physical-presence interface. | Không có lý do từ dump để bỏ TPM table nhằm sửa EXITBS. |
| [ssdt12.aml](acpi-audit/decoded/ssdt12.dsl) | 86 | 0E/0W | Bản sao byte-for-byte của ssdt10.aml. | Ứng viên kiểm tra trùng namespace, chưa phải nguyên nhân boot đã chứng minh. |
| [ssdt13.aml](acpi-audit/decoded/ssdt13.dsl) | 2,777 | 0E/0W | PTID, Intel platform temperature/telemetry interface. | Không đồng nhất với việc macOS có driver cho mọi thiết bị thermal. |
| [ssdt14.aml](acpi-audit/decoded/ssdt14.dsl) | 9,047 | 0E/0W | Các topology TBDU/XHCI ở root port, USB hub và hotplug mở rộng. | Nhiều nhánh là template có điều kiện; không đếm thành cổng vật lý đang cắm. |
| [ssdt15.aml](acpi-audit/decoded/ssdt15.dsl) | 35,632 | 0E/6W | Acer WMID/WMI, _WDG và các phương thức điều khiển liên quan EC. | Chủ yếu tính năng OEM; không chạy các method ghi EC trong quá trình phân tích này. |
| [ssdt16.aml](acpi-audit/decoded/ssdt16.dsl) | 15,505 | 0E/3W | PEG1 power resource PXP, PEGB/PEGE/DEDP, các nhánh dGPU và HDAS. | Có _ON/_OFF và nhánh bật/tắt theo biến NVS; cần giữ cho hướng thử RTX. |
| [ssdt17.aml](acpi-audit/decoded/ssdt17.dsl) | 364 | 0E/0W | ThermalZone TZ00 đọc nhiệt từ EC0; _TMP/_CRT/_HOT. | CRT1=0x78 (120°C), CHOT=0x6E (110°C) là ngưỡng khai báo, không phải nhiệt đo hiện tại. |
| [ssdt18.aml](acpi-audit/decoded/ssdt18.dsl) | 31,792 | 0E/12W | NVIDIA Optimus DSM, _PS0/_PS3, VBOR/NOPR, NPCF, LCD0, Acer AWMI. | Đường _PS3 gọi PEG1.PXP._OFF; có một _DSM NPCF thiếu return trên vài nhánh. |
| [ssdt19.aml](acpi-audit/decoded/ssdt19.dsl) | 1,175 | 0E/0W | Bổ sung _UPC/_PLD cho TXHC.RHUB.SS01–SS04 qua UBTC.RUCC. | Thông tin topology động; không thay thế phép map cổng thực tế. |
| [ssdt20.aml](acpi-audit/decoded/ssdt20.dsl) | 15,082 | 0E/0W | GPE/event dispatch cho PCIe, iGPU, WLAN, audio và root port. | Không gọi thủ công các GPE methods để thử, vì có thể thay đổi trạng thái thiết bị. |
| [ssdt21.aml](acpi-audit/decoded/ssdt21.dsl) | 11,050 | 0E/0W | NHPG/NPME/SPNT/SPTS/SWAK: event, power và sleep/wake. | Cần giữ tính nhất quán với các bảng PCIe/GPE; không drop riêng tùy tiện. |
| [ssdt22.aml](acpi-audit/decoded/ssdt22.dsl) | 4,277 | 0E/0W | Các power resource/PEGA của RP01/RP05/RP08, điều kiện theo OSYS. | Các tên _ON/_OFF lặp trong PowerResource/nhánh điều kiện không tự là xung đột namespace. |
| [ssdt23.aml](acpi-audit/decoded/ssdt23.dsl) | 248 | 0E/0W | PCDE/HBID: giao tiếp SMI qua port B2 và buffer GPCD. | Phân tích tĩnh; không thực thi method SMI này. |


**Giới hạn và bước tiếp theo hợp lý**

- Chưa chạy interpreter AML mô phỏng đầy đủ, chưa boot kernel trên Acer, chưa gọi
  các method tác động phần cứng. iASL không thay thế các bước đó.
- XSDT có 41 con trỏ duy nhất, còn bộ dump có 40 bảng hợp lệ ngoài DSDT/XSDT
  và một tệp rỗng. Bộ xuất không lưu mapping vật lý đầy đủ; cần dump có địa chỉ
  nếu muốn quyết định chắc chắn cách loại riêng bản ADED trùng.
- Đối chiếu nguyên nhân EXITBS vẫn cần log OpenCore mới từ Acer. Panic của QEMU
  và ô trắng probe trong hồ sơ cũ không được dùng làm kết luận cho máy thật.
- Không có phát hiện tĩnh nào ở đây chứng minh phải thay toàn bộ DSDT, patch APIC,
  bỏ ssdt3 hoặc ghép EFI Dell. Không sửa EFI đã chuẩn bị trong lần phân tích này.
- Trước khi gọi bộ EFI hoàn chỉnh: map USB thực tế. Có thể dùng EFI hiện tại làm
  phép thử chẩn đoán tạm, nhưng giữ rõ giới hạn UTBDefault và đồ họa chưa tăng tốc.

**Tệp bằng chứng**

- `inventory.json`: header, SHA256, chiều dài và checksum của đủ 43 tệp.
- `hardware-structures.json`: giải cấu trúc MADT/XSDT và danh sách USB namespace.
- `namespace-index.json`: chỉ mục tĩnh đường dẫn/object và dòng nguồn, không phải runtime namespace.
- `cross-table-declarations.json`: đối chiếu khai báo tĩnh; bản trùng ADED đã xác định.
- `resolved-status.json`: kết quả giải mã có external reference trong process riêng.
- `compile-summary.json`, `compile/*.log`: kết quả recompile và toàn bộ warnings.
- `nhlt-endpoints.json`: cấu trúc ba endpoint âm thanh, đối chiếu Intel/Linux nhlt_endpoint.
- `staged-ssdt/`: bản giải mã bốn SSDT đã dựng để đối chiếu; không chỉnh staging.

**Tài liệu đối chiếu**

- [ACPI 6.5: programming model/MADT](https://uefi.org/specs/ACPI/6.5/05_ACPI_Software_Programming_Model.html).
- [ACPI: khai báo processor và liên hệ _UID với MADT](https://uefi.org/htmlspecs/ACPI_Spec_6_4_html/08_Processor_Configuration_and_Control/declaring-processors.html).
- [OpenCore SSDT-PLUG-ALT chính thức](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/Source/SSDT-PLUG-ALT.dsl).
- [Intel/Linux NHLT layout](https://github.com/torvalds/linux/blob/master/include/sound/intel-nhlt.h).
