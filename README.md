# Acer Nitro AN515-58 — OpenCore/macOS investigation

**English (primary)** | [Tiếng Việt](README.vi.md)

Hardware evidence, configuration history and boot diagnostics for an **Acer Nitro AN515-58 with an i5-12500H, Intel Iris Xe and RTX 3060 Laptop GPU**.

**Status — 31 October 2026:** the correct Tahoe `26.7.1 / 25G241` Recovery was tested on the Acer using OpenCore **1.0.8 DEBUG** through GRUB. The log confirms Darwin **25.6.0**, successful CPUID patching and seven successful kext injections, then ends at **`EXITBS:START`**. Recovery/desktop and graphics acceleration remain unconfirmed. See the [two-run comparison and log excerpts](docs/BOOT-RESULTS-20261031.md).

## Start here

Active plan: [baseline boot and staged XeGfx testing / kế hoạch thử nghiệm](docs/EXPERIMENT-PLAN-20261030.md).

1. [Current investigation status](docs/STATUS-20261030.md) — Linux measurements, later local work and remaining questions.
2. [Linux hardware summary](evidence/linux-hardware-20261030-summary.json) — measured GPU topology, memory configuration and display route.
3. [Historical 1401 configuration](drive-G/EFI/OC/config.plist), [configuration summary](evidence/drive-G-config-summary.json) and [October 22 patch notes](docs/CONFIG-PATCH-20261022.md).
4. [Original ACPI analysis](docs/ACPI-ANALYSIS-20261021.md), [history](docs/HISTORY.md), [help request](docs/HELP-REQUEST.md) and [recovery notes](docs/RESTORE.md). These historical technical notes are currently in Vietnamese.

## Hardware and measured graphics state

| Component | Evidence / status |
|---|---|
| Laptop / BIOS | Acer Nitro AN515-58; Insyde **V2.21** |
| CPU / RAM | Intel Core i5-12500H, Alder Lake-H; 12 cores / 16 logical CPUs; 16 GB RAM |
| Intel iGPU | **`8086:46A6`, revision `0C`**, subsystem `1025:159C`; `00:02.0`, ACPI `\_SB.PC00.GFX0` |
| GPU topology | Linux i915 reports **80 EU, 5 DSS/subslices, mask `0x1F`**, 16 EU per DSS |
| Graphics memory | GGC **`0x02C1`** read at PCI offset `0x50`; GMS `0x02` decodes to **64 MiB configured stolen memory**. Usable memory after reservations is not established. |
| Internal panel | BOE `0ABF`, **1920×1080**; Intel **eDP-1, pipe A, DDI A / PHY A**, active at 165 Hz in the Linux capture; a 60 Hz mode is also listed |
| NVIDIA GPU | RTX 3060 Laptop 6 GB, **`10DE:2560`**; `01:00.0`, ACPI `\_SB.PC00.PEG1.PEGP`; visible to nouveau in Linux |
| HDMI | An older hardware report associates the external monitor with NVIDIA. The new capture covers Intel connectors and does not independently establish HDMI routing. |
| LAN / Wi-Fi | Killer E2600 `10EC:2600`; Killer AX1650i / Intel `8086:51F0` |
| Audio / touchpad | Reported Realtek ALC287 / Intel SST; Synaptics `SYNA7DB5` I2C; macOS operation unverified |
| External test disks | Kingston SA400S37120G **120 GB** for boot media; Intel SS DSCKKF256G8 **256 GB** (~238 GiB) intended for macOS |

The BIOS exposes **Optimus / Auto Select**. The Linux capture proves that the internal panel was driven by Intel while NVIDIA remained present; it does not record the exact saved BIOS menu value. Drive letters and disk numbers are historical labels, not reliable identities for writing disks.

## What has and has not been demonstrated

| Work | Result and limit |
|---|---|
| Sequoia boot investigation | Logs end at `EXITBS:START`; no physical-machine panic has established the cause. Later local attempts still stopped there after the boot-argument and DSDT fixes. |
| `SetupVirtualMap` tests | Both values have been tried; a later local log confirmed `VMAP 0` without progress. This is not a proven fix. |
| QEMU/GDB experiments | Useful VM observations, including a processor panic after CPU-state intervention; **not a panic captured from the Acer**. See [VM evidence](evidence/post-entry-proof.json). |
| Ubuntu live capture | Runs directly on the Acer. GPU topology, PCI configuration, EDID and firmware tables were collected; this demonstrates Linux behavior, not macOS support. |
| Tahoe boot baseline | Official OpenCore **1.0.8 DEBUG**, minimal Acer configuration; validator/integrity checks passed. Physical test selected the correct Recovery and applied CPUID patching, but still stopped at EXITBS. Successful injection does not prove kext execution. [Evidence](docs/BOOT-RESULTS-20261031.md). |
| NootedGreen experiment | A local rebuild contains the `ngreen-eu=80` parser missing from the reviewed Yoga release binary. It has not been loaded or tested on the Acer. |
| XeGfx | A developer requested hardware information in [issue #1](https://github.com/phmthnh/Acer-Nitro-AN515-58-OpenCore-Investigation/issues/1). No XeGfx installation or probe has been performed here. |

There is no confirmed accelerated desktop, Metal result, HDMI output, sleep/wake behavior or complete peripheral support. Passing a validator, compiling a kext or seeing a GPU name is not a successful hardware test.

## Historical snapshot versus current local work

**`drive-G/` and the `drive-g-20261021` release preserve the October 21, 2026 snapshot.** They contain the 1401/NullMoth 2.4.3 setup, replacement DSDT and that snapshot's CPU/GPU settings. They do not describe the current Kingston USB or the new Tahoe baseline.

The later local baseline does not include a replacement DSDT, forced-HT kernel patches, CpuTopologyRebuild or an acceleration stack. Its USB preparation retains Ubuntu and adds a GRUB entry that chains to OpenCore. Chainloading changes the pre-boot environment compared with launching OpenCore directly from firmware; that matters when interpreting another EXITBS failure.

The new EFI, raw Linux capture, rebuilt kext and Apple installation files remain local. This update publishes a **curated measurement summary and documentation**, not those binaries. Local preparation is not a new tested EFI release.

The historical ACPI report covers 43 captured files. The later Linux capture contains 48 firmware-table files, including DSDT and 31 SSDTs, with MSDM/SLIC excluded. These are separate captures. Firmware declares 64 CPU devices, while MADT enables 16 APIC entries; the number 64 alone does not establish an ACPI bug.

## Experimental graphics paths

- **NootedGreen / Yoga-derived TGL stack:** evaluated separately from NullMoth. The Acer's 80 EU and GGC `0x02C1` differ from the Yoga reference's reported 96 EU and `0xFEC1`. Yoga's two static 60 MiB GMS patches and runtime YogaGMSFix must not be copied unchanged. The local rebuild and payload review are static checks, not acceleration evidence.
- **XeGfx:** upstream lists Alder Lake / Raptor Lake as untested and asks for hardware reports and generation-specific GuC work. The first request is informational. Its optional stage-2 probe still requires a running macOS installation, installation of a kext into the auxiliary collection and a manual load. It has not been run on this Acer. See [the request and prerequisites](docs/STATUS-20261030.md#xegfx-request).
- **NullMoth / NVIDIA:** retained in the historical evidence. Driver files and `nvfb`/`nvaccel` arguments do not demonstrate RTX acceleration or a working HDMI path.

## Download and verify the historical snapshot

- [Release: drive-g-20261021](https://github.com/phmthnh/Acer-Nitro-AN515-58-OpenCore-Investigation/releases/tag/drive-g-20261021).
- Asset `Acer-Nitro-drive-G-20261021-redacted.zip` contains **163 payload files** plus `SNAPSHOT-MANIFEST.json`.
- [Per-file manifest](evidence/drive-G-20261021-manifest.json) and [release hash record](evidence/drive-G-release.json); the release also provides `SHA256SUMS.txt`.
- `BaseSystem.dmg` and `nullmoth-nvidia-2.4.3.tar.gz` are in the release ZIP rather than Git history because they exceed 100 MiB.

The shared snapshot has 11 SMBIOS / SSID / Wi-Fi password fields redacted. Verify shared files using `published_sha256`, not the original source hash or the profile's original EFI hash. The ZIP does not preserve the partition layout and is not a ready-to-boot disk image. Some older evidence exists only as manifests or summaries; a hash is not a readable boot log.

## How to help

The immediate goal is to locate the boot failure and reach Recovery, then evaluate graphics in a separate test. Please identify the exact snapshot/configuration, file or method, the reason for a proposed change and the expected log evidence. Keep firmware observations, static analysis, VM results and physical boot results distinct.

Hardware information can be shared before testing a new driver. Do not include real SMBIOS identifiers, Wi-Fi credentials, Windows keys or Apple account details in a report.

## References and attribution

[OpenCorePkg](https://github.com/acidanthera/OpenCorePkg) · [Dortania](https://dortania.github.io/OpenCore-Install-Guide/) · [1401](https://github.com/nullmoth/1401) · [NullMoth](https://github.com/nullmoth/nvidia-macos-driver) · [WhateverXe](https://github.com/b00t0x/WhateverXe) · [Dell Iris Xe/Tahoe research](https://github.com/JulioNectar/Hackintosh-XPS13Plus-IrisXe-Tahoe) · [Yoga reference](https://github.com/willyyypatootieee/Hackintosh-LenovoYoga-IrisXe-Tahoe) · [XeGfx](https://github.com/watchthelight-labs/XeGfx)

Third-party components retain their authors' terms. This investigation does not relicense OpenCore, kexts, Apple installation media or NullMoth components, and does not claim authorship of the referenced drivers.
