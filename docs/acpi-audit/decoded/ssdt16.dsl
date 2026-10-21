/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ssdt16.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00003C91 (15505)
 *     Revision         0x02
 *     Checksum         0x29
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "ACRSYS", "ACRPRDCT", 0x00000002)
{
    External (_SB_.CAGS, MethodObj)    // 1 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.ISME, MethodObj)    // 1 Arguments
    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.DGCX, IntObj)
    External (_SB_.PC00.DSSV, FieldUnitObj)
    External (_SB_.PC00.GC6I, MethodObj)    // 0 Arguments
    External (_SB_.PC00.GC6O, MethodObj)    // 0 Arguments
    External (_SB_.PC00.GLAN, DeviceObj)
    External (_SB_.PC00.HDAS, DeviceObj)
    External (_SB_.PC00.HDAS.VDID, UnknownObj)
    External (_SB_.PC00.I2C0, DeviceObj)
    External (_SB_.PC00.I2C0.TPD0, DeviceObj)
    External (_SB_.PC00.I2C0.TPL1, DeviceObj)
    External (_SB_.PC00.I2C1, DeviceObj)
    External (_SB_.PC00.I2C1.TPL1, DeviceObj)
    External (_SB_.PC00.LPCB.EC0_.DSMD, UnknownObj)
    External (_SB_.PC00.NVGE, FieldUnitObj)
    External (_SB_.PC00.OPTF, FieldUnitObj)
    External (_SB_.PC00.PEG0, DeviceObj)
    External (_SB_.PC00.PEG0.PEGP, DeviceObj)
    External (_SB_.PC00.PEG0.PRMV, IntObj)
    External (_SB_.PC00.PEG0.PRTP, IntObj)
    External (_SB_.PC00.PEG0.RD3C, IntObj)
    External (_SB_.PC00.PEG0.SLOT, IntObj)
    External (_SB_.PC00.PEG0.VDID, UnknownObj)
    External (_SB_.PC00.PEG1, DeviceObj)
    External (_SB_.PC00.PEG1.CEDR, FieldUnitObj)
    External (_SB_.PC00.PEG1.CEMP, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PEG1.CMDR, FieldUnitObj)
    External (_SB_.PC00.PEG1.D0ST, FieldUnitObj)
    External (_SB_.PC00.PEG1.D3HT, FieldUnitObj)
    External (_SB_.PC00.PEG1.DGDS, UnknownObj)
    External (_SB_.PC00.PEG1.DHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.DVES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.EHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.HBSL, FieldUnitObj)
    External (_SB_.PC00.PEG1.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.LREN, FieldUnitObj)
    External (_SB_.PC00.PEG1.PCPB, IntObj)
    External (_SB_.PC00.PEG1.PEGP, DeviceObj)
    External (_SB_.PC00.PEG1.PEGP.DBRL, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGD1, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGD2, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGD3, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGD4, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGD5, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGD6, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGD7, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGD8, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGD9, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGDA, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGDB, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGDC, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGDD, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGDE, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGDF, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGDS, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DGDX, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.DNID, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.EDMX, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.HDAE, FieldUnitObj)
    External (_SB_.PC00.PEG1.PEGP.LTRE, IntObj)
    External (_SB_.PC00.PEG1.PEGP.NVID, FieldUnitObj)
    External (_SB_.PC00.PEG1.PEGP.PEGB.PEGE.DEDP, DeviceObj)
    External (_SB_.PC00.PEG1.PEGP.SSSV, FieldUnitObj)
    External (_SB_.PC00.PEG1.PRMV, IntObj)
    External (_SB_.PC00.PEG1.PRTP, IntObj)
    External (_SB_.PC00.PEG1.RD3C, IntObj)
    External (_SB_.PC00.PEG1.SLOT, IntObj)
    External (_SB_.PC00.PEG1.TMCS, IntObj)
    External (_SB_.PC00.PEG1.VDID, UnknownObj)
    External (_SB_.PC00.PEG2, DeviceObj)
    External (_SB_.PC00.PEG2.PEGP, DeviceObj)
    External (_SB_.PC00.PEG2.PRMV, IntObj)
    External (_SB_.PC00.PEG2.PRTP, IntObj)
    External (_SB_.PC00.PEG2.RD3C, IntObj)
    External (_SB_.PC00.PEG2.SLOT, IntObj)
    External (_SB_.PC00.PEG2.VDID, UnknownObj)
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP01.PRMV, IntObj)
    External (_SB_.PC00.RP01.PRTP, IntObj)
    External (_SB_.PC00.RP01.RD3C, IntObj)
    External (_SB_.PC00.RP01.SLOT, IntObj)
    External (_SB_.PC00.RP01.VDID, UnknownObj)
    External (_SB_.PC00.RP02, DeviceObj)
    External (_SB_.PC00.RP02.PRMV, IntObj)
    External (_SB_.PC00.RP02.PRTP, IntObj)
    External (_SB_.PC00.RP02.RD3C, IntObj)
    External (_SB_.PC00.RP02.SLOT, IntObj)
    External (_SB_.PC00.RP02.VDID, UnknownObj)
    External (_SB_.PC00.RP03, DeviceObj)
    External (_SB_.PC00.RP03.PRMV, IntObj)
    External (_SB_.PC00.RP03.PRTP, IntObj)
    External (_SB_.PC00.RP03.RD3C, IntObj)
    External (_SB_.PC00.RP03.SLOT, IntObj)
    External (_SB_.PC00.RP03.VDID, UnknownObj)
    External (_SB_.PC00.RP04, DeviceObj)
    External (_SB_.PC00.RP04.PRMV, IntObj)
    External (_SB_.PC00.RP04.PRTP, IntObj)
    External (_SB_.PC00.RP04.RD3C, IntObj)
    External (_SB_.PC00.RP04.SLOT, IntObj)
    External (_SB_.PC00.RP04.VDID, UnknownObj)
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.PRMV, IntObj)
    External (_SB_.PC00.RP05.PRTP, IntObj)
    External (_SB_.PC00.RP05.RD3C, IntObj)
    External (_SB_.PC00.RP05.SLOT, IntObj)
    External (_SB_.PC00.RP05.VDID, UnknownObj)
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP06.LASX, UnknownObj)
    External (_SB_.PC00.RP06.PRMV, IntObj)
    External (_SB_.PC00.RP06.PRTP, IntObj)
    External (_SB_.PC00.RP06.PXSX, DeviceObj)
    External (_SB_.PC00.RP06.RD3C, IntObj)
    External (_SB_.PC00.RP06.SLOT, IntObj)
    External (_SB_.PC00.RP06.VDID, UnknownObj)
    External (_SB_.PC00.RP07, DeviceObj)
    External (_SB_.PC00.RP07.PRMV, IntObj)
    External (_SB_.PC00.RP07.PRTP, IntObj)
    External (_SB_.PC00.RP07.RD3C, IntObj)
    External (_SB_.PC00.RP07.SLOT, IntObj)
    External (_SB_.PC00.RP07.VDID, UnknownObj)
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP08.PRMV, IntObj)
    External (_SB_.PC00.RP08.PRTP, IntObj)
    External (_SB_.PC00.RP08.RD3C, IntObj)
    External (_SB_.PC00.RP08.SLOT, IntObj)
    External (_SB_.PC00.RP08.VDID, UnknownObj)
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP09.PRMV, IntObj)
    External (_SB_.PC00.RP09.PRTP, IntObj)
    External (_SB_.PC00.RP09.PXSX, DeviceObj)
    External (_SB_.PC00.RP09.RD3C, IntObj)
    External (_SB_.PC00.RP09.SLOT, IntObj)
    External (_SB_.PC00.RP09.VDID, UnknownObj)
    External (_SB_.PC00.RP10, DeviceObj)
    External (_SB_.PC00.RP10.PRMV, IntObj)
    External (_SB_.PC00.RP10.PRTP, IntObj)
    External (_SB_.PC00.RP10.RD3C, IntObj)
    External (_SB_.PC00.RP10.SLOT, IntObj)
    External (_SB_.PC00.RP10.VDID, UnknownObj)
    External (_SB_.PC00.RP11, DeviceObj)
    External (_SB_.PC00.RP11.PRMV, IntObj)
    External (_SB_.PC00.RP11.PRTP, IntObj)
    External (_SB_.PC00.RP11.RD3C, IntObj)
    External (_SB_.PC00.RP11.SLOT, IntObj)
    External (_SB_.PC00.RP11.VDID, UnknownObj)
    External (_SB_.PC00.RP12, DeviceObj)
    External (_SB_.PC00.RP12.PRMV, IntObj)
    External (_SB_.PC00.RP12.PRTP, IntObj)
    External (_SB_.PC00.RP12.RD3C, IntObj)
    External (_SB_.PC00.RP12.SLOT, IntObj)
    External (_SB_.PC00.RP12.VDID, UnknownObj)
    External (_SB_.PC00.RP13, DeviceObj)
    External (_SB_.PC00.RP13.PRMV, IntObj)
    External (_SB_.PC00.RP13.PRTP, IntObj)
    External (_SB_.PC00.RP13.RD3C, IntObj)
    External (_SB_.PC00.RP13.SLOT, IntObj)
    External (_SB_.PC00.RP13.VDID, UnknownObj)
    External (_SB_.PC00.RP14, DeviceObj)
    External (_SB_.PC00.RP14.PRMV, IntObj)
    External (_SB_.PC00.RP14.PRTP, IntObj)
    External (_SB_.PC00.RP14.RD3C, IntObj)
    External (_SB_.PC00.RP14.SLOT, IntObj)
    External (_SB_.PC00.RP14.VDID, UnknownObj)
    External (_SB_.PC00.RP15, DeviceObj)
    External (_SB_.PC00.RP15.PRMV, IntObj)
    External (_SB_.PC00.RP15.PRTP, IntObj)
    External (_SB_.PC00.RP15.RD3C, IntObj)
    External (_SB_.PC00.RP15.SLOT, IntObj)
    External (_SB_.PC00.RP15.VDID, UnknownObj)
    External (_SB_.PC00.RP16, DeviceObj)
    External (_SB_.PC00.RP16.PRMV, IntObj)
    External (_SB_.PC00.RP16.PRTP, IntObj)
    External (_SB_.PC00.RP16.RD3C, IntObj)
    External (_SB_.PC00.RP16.SLOT, IntObj)
    External (_SB_.PC00.RP16.VDID, UnknownObj)
    External (_SB_.PC00.RP17, DeviceObj)
    External (_SB_.PC00.RP17.PRMV, IntObj)
    External (_SB_.PC00.RP17.PRTP, IntObj)
    External (_SB_.PC00.RP17.RD3C, IntObj)
    External (_SB_.PC00.RP17.SLOT, IntObj)
    External (_SB_.PC00.RP17.VDID, UnknownObj)
    External (_SB_.PC00.RP18, DeviceObj)
    External (_SB_.PC00.RP18.PRMV, IntObj)
    External (_SB_.PC00.RP18.PRTP, IntObj)
    External (_SB_.PC00.RP18.RD3C, IntObj)
    External (_SB_.PC00.RP18.SLOT, IntObj)
    External (_SB_.PC00.RP18.VDID, UnknownObj)
    External (_SB_.PC00.RP19, DeviceObj)
    External (_SB_.PC00.RP19.PRMV, IntObj)
    External (_SB_.PC00.RP19.PRTP, IntObj)
    External (_SB_.PC00.RP19.RD3C, IntObj)
    External (_SB_.PC00.RP19.SLOT, IntObj)
    External (_SB_.PC00.RP19.VDID, UnknownObj)
    External (_SB_.PC00.RP20, DeviceObj)
    External (_SB_.PC00.RP20.PRMV, IntObj)
    External (_SB_.PC00.RP20.PRTP, IntObj)
    External (_SB_.PC00.RP20.RD3C, IntObj)
    External (_SB_.PC00.RP20.SLOT, IntObj)
    External (_SB_.PC00.RP20.VDID, UnknownObj)
    External (_SB_.PC00.RP21, DeviceObj)
    External (_SB_.PC00.RP21.PRMV, IntObj)
    External (_SB_.PC00.RP21.PRTP, IntObj)
    External (_SB_.PC00.RP21.RD3C, IntObj)
    External (_SB_.PC00.RP21.SLOT, IntObj)
    External (_SB_.PC00.RP21.VDID, UnknownObj)
    External (_SB_.PC00.RP22, DeviceObj)
    External (_SB_.PC00.RP22.PRMV, IntObj)
    External (_SB_.PC00.RP22.PRTP, IntObj)
    External (_SB_.PC00.RP22.RD3C, IntObj)
    External (_SB_.PC00.RP22.SLOT, IntObj)
    External (_SB_.PC00.RP22.VDID, UnknownObj)
    External (_SB_.PC00.RP23, DeviceObj)
    External (_SB_.PC00.RP23.PRMV, IntObj)
    External (_SB_.PC00.RP23.PRTP, IntObj)
    External (_SB_.PC00.RP23.RD3C, IntObj)
    External (_SB_.PC00.RP23.SLOT, IntObj)
    External (_SB_.PC00.RP23.VDID, UnknownObj)
    External (_SB_.PC00.RP24, DeviceObj)
    External (_SB_.PC00.RP24.PRMV, IntObj)
    External (_SB_.PC00.RP24.PRTP, IntObj)
    External (_SB_.PC00.RP24.RD3C, IntObj)
    External (_SB_.PC00.RP24.SLOT, IntObj)
    External (_SB_.PC00.RP24.VDID, UnknownObj)
    External (_SB_.PC00.RP25, DeviceObj)
    External (_SB_.PC00.RP25.PRMV, IntObj)
    External (_SB_.PC00.RP25.PRTP, IntObj)
    External (_SB_.PC00.RP25.RD3C, IntObj)
    External (_SB_.PC00.RP25.SLOT, IntObj)
    External (_SB_.PC00.RP25.VDID, UnknownObj)
    External (_SB_.PC00.RP26, DeviceObj)
    External (_SB_.PC00.RP26.PRMV, IntObj)
    External (_SB_.PC00.RP26.PRTP, IntObj)
    External (_SB_.PC00.RP26.RD3C, IntObj)
    External (_SB_.PC00.RP26.SLOT, IntObj)
    External (_SB_.PC00.RP26.VDID, UnknownObj)
    External (_SB_.PC00.RP27, DeviceObj)
    External (_SB_.PC00.RP27.PRMV, IntObj)
    External (_SB_.PC00.RP27.PRTP, IntObj)
    External (_SB_.PC00.RP27.RD3C, IntObj)
    External (_SB_.PC00.RP27.SLOT, IntObj)
    External (_SB_.PC00.RP27.VDID, UnknownObj)
    External (_SB_.PC00.RP28, DeviceObj)
    External (_SB_.PC00.RP28.PRMV, IntObj)
    External (_SB_.PC00.RP28.PRTP, IntObj)
    External (_SB_.PC00.RP28.RD3C, IntObj)
    External (_SB_.PC00.RP28.SLOT, IntObj)
    External (_SB_.PC00.RP28.VDID, UnknownObj)
    External (_SB_.PC00.SAT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT1, DeviceObj)
    External (_SB_.PC00.SAT0.PRT2, DeviceObj)
    External (_SB_.PC00.SAT0.PRT3, DeviceObj)
    External (_SB_.PC00.SAT0.PRT4, DeviceObj)
    External (_SB_.PC00.SAT0.PRT5, DeviceObj)
    External (_SB_.PC00.SAT0.PRT6, DeviceObj)
    External (_SB_.PC00.SAT0.PRT7, DeviceObj)
    External (_SB_.PC00.TDGC, IntObj)
    External (_SB_.PC00.TGPC, BuffObj)
    External (_SB_.PC00.UA02.BTH0, DeviceObj)
    External (_SB_.PC00.XDCI, DeviceObj)
    External (_SB_.PC00.XDCI.D0I3, UnknownObj)
    External (_SB_.PC00.XDCI.XDCB, UnknownObj)
    External (_SB_.PC00.XHCI, DeviceObj)
    External (_SB_.PC00.XHCI.MEMB, UnknownObj)
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS10, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS02, DeviceObj)
    External (_SB_.PSD0, MethodObj)    // 1 Arguments
    External (_SB_.PSD3, MethodObj)    // 1 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (AUDD, FieldUnitObj)
    External (DBRL, IntObj)
    External (DG2P, UnknownObj)
    External (DG2R, UnknownObj)
    External (DGBA, FieldUnitObj)
    External (DGD1, IntObj)
    External (DGD2, IntObj)
    External (DGD3, IntObj)
    External (DGD4, IntObj)
    External (DGD5, IntObj)
    External (DGD6, IntObj)
    External (DGD7, IntObj)
    External (DGD8, IntObj)
    External (DGD9, IntObj)
    External (DGDA, IntObj)
    External (DGDB, IntObj)
    External (DGDC, IntObj)
    External (DGDD, IntObj)
    External (DGDE, IntObj)
    External (DGDF, IntObj)
    External (DGOP, FieldUnitObj)
    External (DGP2, UnknownObj)
    External (DGPV, UnknownObj)
    External (DGR2, UnknownObj)
    External (DLHR, UnknownObj)
    External (DLPW, UnknownObj)
    External (DTFS, IntObj)
    External (DTOE, IntObj)
    External (DTRC, IntObj)
    External (DTRD, IntObj)
    External (DTRO, IntObj)
    External (DVID, UnknownObj)
    External (EDMX, UnknownObj)
    External (GBED, UnknownObj)
    External (GBEP, UnknownObj)
    External (GBES, UnknownObj)
    External (GPDI, UnknownObj)
    External (GPLI, UnknownObj)
    External (GPLP, UnknownObj)
    External (GPLR, UnknownObj)
    External (HBCL, FieldUnitObj)
    External (HBPL, FieldUnitObj)
    External (IC0D, FieldUnitObj)
    External (IC1D, FieldUnitObj)
    External (IC1S, FieldUnitObj)
    External (OG00, IntObj)
    External (P1WK, FieldUnitObj)
    External (P1WP, UnknownObj)
    External (PBRS, UnknownObj)
    External (PEP0, UnknownObj)
    External (PFCP, UnknownObj)
    External (PIN_.OFF_, MethodObj)    // 1 Arguments
    External (PIN_.ON__, MethodObj)    // 1 Arguments
    External (PIN_.STA_, MethodObj)    // 1 Arguments
    External (PPDI, UnknownObj)
    External (PPLI, UnknownObj)
    External (PPLP, UnknownObj)
    External (PPLR, UnknownObj)
    External (PPSP, UnknownObj)
    External (PPSR, UnknownObj)
    External (PRST, UnknownObj)
    External (PS2P, UnknownObj)
    External (PSP2, UnknownObj)
    External (PSPE, UnknownObj)
    External (PSPR, UnknownObj)
    External (PSR2, UnknownObj)
    External (PSW2, UnknownObj)
    External (PSWP, UnknownObj)
    External (R8DC, UnknownObj)
    External (R8WR, UnknownObj)
    External (RCG0, IntObj)
    External (RCG1, IntObj)
    External (RPS0, IntObj)
    External (RPT0, IntObj)
    External (S0ID, UnknownObj)
    External (SATP, UnknownObj)
    External (SD2P, UnknownObj)
    External (SD2R, UnknownObj)
    External (SD5P, UnknownObj)
    External (SD5R, UnknownObj)
    External (SDP1, UnknownObj)
    External (SDP5, UnknownObj)
    External (SDPP, UnknownObj)
    External (SDR1, UnknownObj)
    External (SDR2, UnknownObj)
    External (SDR5, UnknownObj)
    External (SDRP, UnknownObj)
    External (SDS0, FieldUnitObj)
    External (SDS1, FieldUnitObj)
    External (SHSB, FieldUnitObj)
    External (SPCO, MethodObj)    // 2 Arguments
    External (SPCX, MethodObj)    // 3 Arguments
    External (SR2P, UnknownObj)
    External (SSDP, UnknownObj)
    External (SSDR, UnknownObj)
    External (STPP, UnknownObj)
    External (TBPE, IntObj)
    External (TEDC, IntObj)
    External (TOFF, IntObj)
    External (TPDT, UnknownObj)
    External (TPLS, UnknownObj)
    External (TPLT, UnknownObj)
    External (UAMS, UnknownObj)
    External (VMDE, UnknownObj)
    External (VRRD, FieldUnitObj)
    External (WBRS, UnknownObj)
    External (WFCP, UnknownObj)
    External (WLWK, UnknownObj)
    External (WPRP, UnknownObj)
    External (WRTO, UnknownObj)
    External (WWKP, UnknownObj)
    External (XDCE, UnknownObj)
    External (XDST, IntObj)
    External (XHPR, UnknownObj)

    If (LNotEqual (GBES, Zero)){}
    Scope (\_SB.PC00.PEG1)
    {
        Name (RSTG, Package (0x02)
        {
            Zero, 
            Zero
        })
        Name (PWRG, Package (0x02)
        {
            Zero, 
            Zero
        })
        Name (WAKP, Zero)
        Name (SCLK, Zero)
        Store (DG2R, Index (RSTG, Zero))
        Store (DGR2, Index (RSTG, One))
        Store (DG2P, Index (PWRG, Zero))
        Store (DGP2, Index (PWRG, One))
        Name (WAKG, Zero)
        Store (P1WP, WAKG) /* \_SB_.PC00.PEG1.WAKG */
        Name (TMCS, 0x0BB8)
        If (LNotEqual (DGBA, Zero))
        {
            OperationRegion (DGMR, SystemMemory, DGOP, 0x2000)
            Field (DGMR, AnyAcc, NoLock, Preserve)
            {
                Offset (0x60), 
                PCON,   32, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CADL,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                DDL9,   32, 
                DD10,   32, 
                DD11,   32, 
                DD12,   32, 
                DD13,   32, 
                DD14,   32, 
                DD15,   32, 
                CPL9,   32, 
                CP10,   32, 
                CP11,   32, 
                CP12,   32, 
                CP13,   32, 
                CP14,   32, 
                CP15,   32, 
                Offset (0x300), 
                Offset (0x304), 
                ASLC,   32, 
                Offset (0x30C), 
                Offset (0x310), 
                BCLP,   32, 
                Offset (0x318), 
                CBLV,   32, 
                BCLM,   320, 
                Offset (0x3C6), 
                VRSR,   1
            }

            Method (DVES, 0, Serialized)
            {
                If (LEqual (DGBA, Zero))
                {
                    Return (One)
                }

                If (LAnd (LEqual (And (0x1800, PCON), 0x1800), VRSR))
                {
                    Return (Zero)
                }

                Return (One)
            }

            Method (DNOT, 2, NotSerialized)
            {
                Store (Arg0, CEVT) /* \_SB_.PC00.PEG1.CEVT */
                Store (0x03, CSTS) /* \_SB_.PC00.PEG1.CSTS */
                If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                {
                    Notify (\_SB.PC00.PEG1.PEGP, Arg1)
                }

                Notify (\_SB.PC00.PEG1.PEGP, 0x80) // Status Change
                Return (Zero)
            }

            Method (DLID, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (0x03, CLID) /* \_SB_.PC00.PEG1.CLID */
                }
                Else
                {
                    Store (Arg0, CLID) /* \_SB_.PC00.PEG1.CLID */
                }

                If (DNOT (0x02, Zero))
                {
                    Or (CLID, 0x80000000, CLID) /* \_SB_.PC00.PEG1.CLID */
                    Return (One)
                }

                Return (Zero)
            }

            Method (DINT, 2, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP) /* \_SB_.PC00.PEG1.BCLP */
                    Or (BCLP, 0x80000000, BCLP) /* \_SB_.PC00.PEG1.BCLP */
                    Store (0x02, ASLC) /* \_SB_.PC00.PEG1.ASLC */
                }

                Return (Zero)
            }

            Method (HBRT, 1, Serialized)
            {
                If (And (0x04, DGDS))
                {
                    If (LEqual (Arg0, 0x04))
                    {
                        Notify (\_SB.PC00.PEG1.PEGP.PEGB.PEGE.DEDP, 0x87) // Device-Specific
                    }

                    If (LEqual (Arg0, 0x03))
                    {
                        Notify (\_SB.PC00.PEG1.PEGP.PEGB.PEGE.DEDP, 0x86) // Device-Specific
                    }
                }
            }

            Name (DGCE, Zero)
            Method (DHDW, 0, NotSerialized)
            {
                If (LOr (CondRefOf (WAKG), LNotEqual (WAKG, Zero)))
                {
                    \_SB.SHPO (WAKG, One)
                    \_SB.CAGS (WAKG)
                }
            }

            Method (EHDW, 0, NotSerialized)
            {
                If (LEqual (DGCE, One))
                {
                    DHDW ()
                    Return (One)
                }

                If (LOr (CondRefOf (WAKG), LNotEqual (WAKG, Zero)))
                {
                    \_SB.SHPO (WAKG, Zero)
                    \_SB.CAGS (WAKG)
                }

                Return (Zero)
            }
        }

        Scope (\_SB.PC00.PEG1.PEGP)
        {
            If (LNotEqual (DGBA, Zero))
            {
                Device (PEGB)
                {
                    Name (_ADR, 0x00010000)  // _ADR: Address
                    Device (PEGE)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        If (LNotEqual (EDMX, Zero))
                        {
                            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                            {
                                If (LEqual (Arg0, ToUUID ("edbf573d-e352-4ce7-bf23-37ce9f8402b8") /* Unknown UUID */))
                                {
                                    Switch (ToInteger (Arg2))
                                    {
                                        Case (Zero)
                                        {
                                            If (LEqual (Arg1, One))
                                            {
                                                Store ("DG Supported Functions Bitmap ", Debug)
                                                Return (0x00200001)
                                            }
                                        }
                                        Case (0x15)
                                        {
                                            Name (DGDB, Buffer (0x05)
                                            {
                                                 0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                                            })
                                            CreateDWordField (DGDB, Zero, DGDF)
                                            CreateByteField (DGDB, 0x04, DGSF)
                                            Store (One, Local0)
                                            If (LEqual (And (DerefOf (Index (Arg3, Zero)), One), Zero))
                                            {
                                                \_SB.GGOV (EDMX)
                                                Store (Zero, Local0)
                                            }
                                            ElseIf (LEqual (And (DerefOf (Index (Arg3, Zero)), 0x02), Zero))
                                            {
                                                \_SB.SGOV (EDMX, Zero)
                                                Store (Zero, Local0)
                                            }
                                            Else
                                            {
                                                \_SB.SGOV (EDMX, One)
                                                Store (Zero, Local0)
                                            }

                                            Store (ShiftLeft (\_SB.GGOV (EDMX), One), DGDF) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DSM.DGDF */
                                            Store (Local0, DGSF) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DSM.DGSF */
                                            Return (DGDB) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DSM.DGDB */
                                        }

                                    }
                                }

                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                        {
                            Store (And (Arg0, 0x07), DGDS) /* External reference */
                        }

                        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                        {
                            Store (One, DNID) /* External reference */
                            If (LNotEqual (DIDL, Zero))
                            {
                                Store (DGDL (DIDL), DGD1) /* External reference */
                            }

                            If (LNotEqual (DDL2, Zero))
                            {
                                Store (DGDL (DDL2), DGD2) /* External reference */
                            }

                            If (LNotEqual (DDL3, Zero))
                            {
                                Store (DGDL (DDL3), DGD3) /* External reference */
                            }

                            If (LNotEqual (DDL4, Zero))
                            {
                                Store (DGDL (DDL4), DGD4) /* External reference */
                            }

                            If (LNotEqual (DDL5, Zero))
                            {
                                Store (DGDL (DDL5), DGD5) /* External reference */
                            }

                            If (LNotEqual (DDL6, Zero))
                            {
                                Store (DGDL (DDL6), DGD6) /* External reference */
                            }

                            If (LNotEqual (DDL7, Zero))
                            {
                                Store (DGDL (DDL7), DGD7) /* External reference */
                            }

                            If (LNotEqual (DDL8, Zero))
                            {
                                Store (DGDL (DDL8), DGD8) /* External reference */
                            }

                            If (LNotEqual (DDL9, Zero))
                            {
                                Store (DGDL (DDL9), DGD9) /* External reference */
                            }

                            If (LNotEqual (DD10, Zero))
                            {
                                Store (DGDL (DD10), DGDA) /* External reference */
                            }

                            If (LNotEqual (DD11, Zero))
                            {
                                Store (DGDL (DD11), DGDB) /* External reference */
                            }

                            If (LNotEqual (DD12, Zero))
                            {
                                Store (DGDL (DD12), DGDC) /* External reference */
                            }

                            If (LNotEqual (DD13, Zero))
                            {
                                Store (DGDL (DD13), DGDD) /* External reference */
                            }

                            If (LNotEqual (DD14, Zero))
                            {
                                Store (DGDL (DD14), DGDE) /* External reference */
                            }

                            If (LNotEqual (DD15, Zero))
                            {
                                Store (DGDL (DD15), DGDF) /* External reference */
                            }

                            If (LEqual (DNID, One))
                            {
                                Name (TMP1, Package (0x01)
                                {
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMP1, Zero))
                                Return (TMP1) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMP1 */
                            }

                            If (LEqual (DNID, 0x02))
                            {
                                Name (TMP2, Package (0x02)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMP2, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMP2, One))
                                Return (TMP2) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMP2 */
                            }

                            If (LEqual (DNID, 0x03))
                            {
                                Name (TMP3, Package (0x03)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMP3, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMP3, One))
                                Store (Or (0x00010000, DGD3), Index (TMP3, 0x02))
                                Return (TMP3) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMP3 */
                            }

                            If (LEqual (DNID, 0x04))
                            {
                                Name (TMP4, Package (0x04)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMP4, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMP4, One))
                                Store (Or (0x00010000, DGD3), Index (TMP4, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMP4, 0x03))
                                Return (TMP4) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMP4 */
                            }

                            If (LEqual (DNID, 0x05))
                            {
                                Name (TMP5, Package (0x05)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMP5, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMP5, One))
                                Store (Or (0x00010000, DGD3), Index (TMP5, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMP5, 0x03))
                                Store (Or (0x00010000, DGD5), Index (TMP5, 0x04))
                                Return (TMP5) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMP5 */
                            }

                            If (LEqual (DNID, 0x06))
                            {
                                Name (TMP6, Package (0x06)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMP6, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMP6, One))
                                Store (Or (0x00010000, DGD3), Index (TMP6, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMP6, 0x03))
                                Store (Or (0x00010000, DGD5), Index (TMP6, 0x04))
                                Store (Or (0x00010000, DGD6), Index (TMP6, 0x05))
                                Return (TMP6) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMP6 */
                            }

                            If (LEqual (DNID, 0x07))
                            {
                                Name (TMP7, Package (0x07)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMP7, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMP7, One))
                                Store (Or (0x00010000, DGD3), Index (TMP7, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMP7, 0x03))
                                Store (Or (0x00010000, DGD5), Index (TMP7, 0x04))
                                Store (Or (0x00010000, DGD6), Index (TMP7, 0x05))
                                Store (Or (0x00010000, DGD7), Index (TMP7, 0x06))
                                Return (TMP7) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMP7 */
                            }

                            If (LEqual (DNID, 0x08))
                            {
                                Name (TMP8, Package (0x08)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMP8, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMP8, One))
                                Store (Or (0x00010000, DGD3), Index (TMP8, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMP8, 0x03))
                                Store (Or (0x00010000, DGD5), Index (TMP8, 0x04))
                                Store (Or (0x00010000, DGD6), Index (TMP8, 0x05))
                                Store (Or (0x00010000, DGD7), Index (TMP8, 0x06))
                                Store (Or (0x00010000, DGD8), Index (TMP8, 0x07))
                                Return (TMP8) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMP8 */
                            }

                            If (LEqual (DNID, 0x09))
                            {
                                Name (TMP9, Package (0x09)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMP9, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMP9, One))
                                Store (Or (0x00010000, DGD3), Index (TMP9, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMP9, 0x03))
                                Store (Or (0x00010000, DGD5), Index (TMP9, 0x04))
                                Store (Or (0x00010000, DGD6), Index (TMP9, 0x05))
                                Store (Or (0x00010000, DGD7), Index (TMP9, 0x06))
                                Store (Or (0x00010000, DGD8), Index (TMP9, 0x07))
                                Store (Or (0x00010000, DGD9), Index (TMP9, 0x08))
                                Return (TMP9) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMP9 */
                            }

                            If (LEqual (DNID, 0x0A))
                            {
                                Name (TMPA, Package (0x0A)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMPA, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMPA, One))
                                Store (Or (0x00010000, DGD3), Index (TMPA, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMPA, 0x03))
                                Store (Or (0x00010000, DGD5), Index (TMPA, 0x04))
                                Store (Or (0x00010000, DGD6), Index (TMPA, 0x05))
                                Store (Or (0x00010000, DGD7), Index (TMPA, 0x06))
                                Store (Or (0x00010000, DGD8), Index (TMPA, 0x07))
                                Store (Or (0x00010000, DGD9), Index (TMPA, 0x08))
                                Store (Or (0x00010000, DGDA), Index (TMPA, 0x09))
                                Return (TMPA) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMPA */
                            }

                            If (LEqual (DNID, 0x0B))
                            {
                                Name (TMPB, Package (0x0B)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMPB, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMPB, One))
                                Store (Or (0x00010000, DGD3), Index (TMPB, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMPB, 0x03))
                                Store (Or (0x00010000, DGD5), Index (TMPB, 0x04))
                                Store (Or (0x00010000, DGD6), Index (TMPB, 0x05))
                                Store (Or (0x00010000, DGD7), Index (TMPB, 0x06))
                                Store (Or (0x00010000, DGD8), Index (TMPB, 0x07))
                                Store (Or (0x00010000, DGD9), Index (TMPB, 0x08))
                                Store (Or (0x00010000, DGDA), Index (TMPB, 0x09))
                                Store (Or (0x00010000, DGDB), Index (TMPB, 0x0A))
                                Return (TMPB) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMPB */
                            }

                            If (LEqual (DNID, 0x0C))
                            {
                                Name (TMPC, Package (0x0C)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMPC, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMPC, One))
                                Store (Or (0x00010000, DGD3), Index (TMPC, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMPC, 0x03))
                                Store (Or (0x00010000, DGD5), Index (TMPC, 0x04))
                                Store (Or (0x00010000, DGD6), Index (TMPC, 0x05))
                                Store (Or (0x00010000, DGD7), Index (TMPC, 0x06))
                                Store (Or (0x00010000, DGD8), Index (TMPC, 0x07))
                                Store (Or (0x00010000, DGD9), Index (TMPC, 0x08))
                                Store (Or (0x00010000, DGDA), Index (TMPC, 0x09))
                                Store (Or (0x00010000, DGDB), Index (TMPC, 0x0A))
                                Store (Or (0x00010000, DGDC), Index (TMPC, 0x0B))
                                Return (TMPC) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMPC */
                            }

                            If (LEqual (DNID, 0x0D))
                            {
                                Name (TMPD, Package (0x0D)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMPD, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMPD, One))
                                Store (Or (0x00010000, DGD3), Index (TMPD, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMPD, 0x03))
                                Store (Or (0x00010000, DGD5), Index (TMPD, 0x04))
                                Store (Or (0x00010000, DGD6), Index (TMPD, 0x05))
                                Store (Or (0x00010000, DGD7), Index (TMPD, 0x06))
                                Store (Or (0x00010000, DGD8), Index (TMPD, 0x07))
                                Store (Or (0x00010000, DGD9), Index (TMPD, 0x08))
                                Store (Or (0x00010000, DGDA), Index (TMPD, 0x09))
                                Store (Or (0x00010000, DGDB), Index (TMPD, 0x0A))
                                Store (Or (0x00010000, DGDC), Index (TMPD, 0x0B))
                                Store (Or (0x00010000, DGDD), Index (TMPD, 0x0C))
                                Return (TMPD) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMPD */
                            }

                            If (LEqual (DNID, 0x0E))
                            {
                                Name (TMPE, Package (0x0E)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMPE, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMPE, One))
                                Store (Or (0x00010000, DGD3), Index (TMPE, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMPE, 0x03))
                                Store (Or (0x00010000, DGD5), Index (TMPE, 0x04))
                                Store (Or (0x00010000, DGD6), Index (TMPE, 0x05))
                                Store (Or (0x00010000, DGD7), Index (TMPE, 0x06))
                                Store (Or (0x00010000, DGD8), Index (TMPE, 0x07))
                                Store (Or (0x00010000, DGD9), Index (TMPE, 0x08))
                                Store (Or (0x00010000, DGDA), Index (TMPE, 0x09))
                                Store (Or (0x00010000, DGDB), Index (TMPE, 0x0A))
                                Store (Or (0x00010000, DGDC), Index (TMPE, 0x0B))
                                Store (Or (0x00010000, DGDD), Index (TMPE, 0x0C))
                                Store (Or (0x00010000, DGDE), Index (TMPE, 0x0D))
                                Return (TMPE) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMPE */
                            }

                            If (LEqual (DNID, 0x0F))
                            {
                                Name (TMPF, Package (0x0F)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMPF, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMPF, One))
                                Store (Or (0x00010000, DGD3), Index (TMPF, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMPF, 0x03))
                                Store (Or (0x00010000, DGD5), Index (TMPF, 0x04))
                                Store (Or (0x00010000, DGD6), Index (TMPF, 0x05))
                                Store (Or (0x00010000, DGD7), Index (TMPF, 0x06))
                                Store (Or (0x00010000, DGD8), Index (TMPF, 0x07))
                                Store (Or (0x00010000, DGD9), Index (TMPF, 0x08))
                                Store (Or (0x00010000, DGDA), Index (TMPF, 0x09))
                                Store (Or (0x00010000, DGDB), Index (TMPF, 0x0A))
                                Store (Or (0x00010000, DGDC), Index (TMPF, 0x0B))
                                Store (Or (0x00010000, DGDD), Index (TMPF, 0x0C))
                                Store (Or (0x00010000, DGDE), Index (TMPF, 0x0D))
                                Store (Or (0x00010000, DGDF), Index (TMPF, 0x0E))
                                Return (TMPF) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMPF */
                            }

                            If (LEqual (DNID, 0x10))
                            {
                                Name (TMPG, Package (0x10)
                                {
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (Or (0x00010000, DGD1), Index (TMPG, Zero))
                                Store (Or (0x00010000, DGD2), Index (TMPG, One))
                                Store (Or (0x00010000, DGD3), Index (TMPG, 0x02))
                                Store (Or (0x00010000, DGD4), Index (TMPG, 0x03))
                                Store (Or (0x00010000, DGD5), Index (TMPG, 0x04))
                                Store (Or (0x00010000, DGD6), Index (TMPG, 0x05))
                                Store (Or (0x00010000, DGD7), Index (TMPG, 0x06))
                                Store (Or (0x00010000, DGD8), Index (TMPG, 0x07))
                                Store (Or (0x00010000, DGD9), Index (TMPG, 0x08))
                                Store (Or (0x00010000, DGDA), Index (TMPG, 0x09))
                                Store (Or (0x00010000, DGDB), Index (TMPG, 0x0A))
                                Store (Or (0x00010000, DGDC), Index (TMPG, 0x0B))
                                Store (Or (0x00010000, DGDD), Index (TMPG, 0x0C))
                                Store (Or (0x00010000, DGDE), Index (TMPG, 0x0D))
                                Store (Or (0x00010000, DGDF), Index (TMPG, 0x0E))
                                Return (TMPG) /* \_SB_.PC00.PEG1.PEGP.PEGB.PEGE._DOD.TMPG */
                            }

                            Return (Package (0x01)
                            {
                                0x0400
                            })
                        }

                        Device (DEDP)
                        {
                            Method (_ADR, 0, Serialized)  // _ADR: Address
                            {
                                If (LEqual (And (0x0F00, DGD1), 0x0400))
                                {
                                    Store (DGD1, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGD2), 0x0400))
                                {
                                    Store (DGD2, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGD3), 0x0400))
                                {
                                    Store (DGD3, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGD4), 0x0400))
                                {
                                    Store (DGD4, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGD5), 0x0400))
                                {
                                    Store (DGD5, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGD6), 0x0400))
                                {
                                    Store (DGD6, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGD7), 0x0400))
                                {
                                    Store (DGD7, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGD8), 0x0400))
                                {
                                    Store (DGD8, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGD9), 0x0400))
                                {
                                    Store (DGD9, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGDA), 0x0400))
                                {
                                    Store (DGDA, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGDB), 0x0400))
                                {
                                    Store (DGDB, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGDC), 0x0400))
                                {
                                    Store (DGDC, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGDD), 0x0400))
                                {
                                    Store (DGDD, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGDE), 0x0400))
                                {
                                    Store (DGDE, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                ElseIf (LEqual (And (0x0F00, DGDF), 0x0400))
                                {
                                    Store (DGDF, DGDX) /* External reference */
                                    Return (And (0xFFFF, DGDX))
                                }
                                Else
                                {
                                    Return (0x1F)
                                }
                            }

                            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                            {
                                Return (Package (0x67)
                                {
                                    0x50, 
                                    0x32, 
                                    Zero, 
                                    One, 
                                    0x02, 
                                    0x03, 
                                    0x04, 
                                    0x05, 
                                    0x06, 
                                    0x07, 
                                    0x08, 
                                    0x09, 
                                    0x0A, 
                                    0x0B, 
                                    0x0C, 
                                    0x0D, 
                                    0x0E, 
                                    0x0F, 
                                    0x10, 
                                    0x11, 
                                    0x12, 
                                    0x13, 
                                    0x14, 
                                    0x15, 
                                    0x16, 
                                    0x17, 
                                    0x18, 
                                    0x19, 
                                    0x1A, 
                                    0x1B, 
                                    0x1C, 
                                    0x1D, 
                                    0x1E, 
                                    0x1F, 
                                    0x20, 
                                    0x21, 
                                    0x22, 
                                    0x23, 
                                    0x24, 
                                    0x25, 
                                    0x26, 
                                    0x27, 
                                    0x28, 
                                    0x29, 
                                    0x2A, 
                                    0x2B, 
                                    0x2C, 
                                    0x2D, 
                                    0x2E, 
                                    0x2F, 
                                    0x30, 
                                    0x31, 
                                    0x32, 
                                    0x33, 
                                    0x34, 
                                    0x35, 
                                    0x36, 
                                    0x37, 
                                    0x38, 
                                    0x39, 
                                    0x3A, 
                                    0x3B, 
                                    0x3C, 
                                    0x3D, 
                                    0x3E, 
                                    0x3F, 
                                    0x40, 
                                    0x41, 
                                    0x42, 
                                    0x43, 
                                    0x44, 
                                    0x45, 
                                    0x46, 
                                    0x47, 
                                    0x48, 
                                    0x49, 
                                    0x4A, 
                                    0x4B, 
                                    0x4C, 
                                    0x4D, 
                                    0x4E, 
                                    0x4F, 
                                    0x50, 
                                    0x51, 
                                    0x52, 
                                    0x53, 
                                    0x54, 
                                    0x55, 
                                    0x56, 
                                    0x57, 
                                    0x58, 
                                    0x59, 
                                    0x5A, 
                                    0x5B, 
                                    0x5C, 
                                    0x5D, 
                                    0x5E, 
                                    0x5F, 
                                    0x60, 
                                    0x61, 
                                    0x62, 
                                    0x63, 
                                    0x64
                                })
                            }

                            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                            {
                                If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x64)))
                                {
                                    Store (Divide (Multiply (Arg0, 0xFF), 0x64, ), BCLP) /* \_SB_.PC00.PEG1.BCLP */
                                    Or (BCLP, 0x80000000, BCLP) /* \_SB_.PC00.PEG1.BCLP */
                                    Store (0x02, ASLC) /* \_SB_.PC00.PEG1.ASLC */
                                    Store (Arg0, DBRL) /* External reference */
                                }
                            }

                            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                            {
                                Return (DBRL) /* External reference */
                            }
                        }

                        Method (DGDL, 1, NotSerialized)
                        {
                            Increment (DNID)
                            Store (And (Arg0, 0x0F0F), Local0)
                            Or (0x80000000, Local0, Local1)
                            If (LEqual (DIDL, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DDL2, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DDL3, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DDL4, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DDL5, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DDL6, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DDL7, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DDL8, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DDL9, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DD10, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DD11, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DD12, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DD13, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DD14, Local0))
                            {
                                Return (Local1)
                            }

                            If (LEqual (DD15, Local0))
                            {
                                Return (Local1)
                            }

                            Return (Zero)
                        }
                    }
                }
            }
        }

        Name (WKEN, Zero)
        Name (WOFF, Zero)
        Name (LNRD, Zero)
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If (CondRefOf (RD3C))
            {
                If (LEqual (RD3C, 0x02))
                {
                    Return (0x04)
                }
            }

            Return (0x04)
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                Store (One, WKEN) /* \_SB_.PC00.PEG1.WKEN */
            }
            ElseIf (LAnd (Arg0, Arg2))
            {
                Store (One, WKEN) /* \_SB_.PC00.PEG1.WKEN */
            }
            Else
            {
                Store (Zero, WKEN) /* \_SB_.PC00.PEG1.WKEN */
            }
        }

        Method (PPS0, 0, Serialized)
        {
        }

        Method (PPS3, 0, Serialized)
        {
        }

        PowerResource (PXP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (VDID, 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If (LEqual (GPRS (), Zero))
                {
                    Return (Zero)
                }

                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If (LEqual (VDID, 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If (LEqual (GPRS (), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (DGPV, 0x10DE))
                {
                    If (LEqual (\_SB.PC00.TDGC, One))
                    {
                        If (LEqual (\_SB.PC00.DGCX, 0x03))
                        {
                            \_SB.PC00.GC6O ()
                        }
                        ElseIf (LEqual (\_SB.PC00.DGCX, 0x04))
                        {
                            \_SB.PC00.GC6O ()
                        }

                        Store (Zero, \_SB.PC00.TDGC) /* External reference */
                        Store (Zero, \_SB.PC00.DGCX) /* External reference */
                    }
                    Else
                    {
                        PON ()
                        L23D ()
                        Store (0x07, \_SB.PC00.PEG1.CMDR) /* External reference */
                        Store (Zero, \_SB.PC00.PEG1.D0ST) /* External reference */
                        While (LNotEqual (\_SB.PC00.PEG1.PEGP.NVID, 0x10DE))
                        {
                            Sleep (One)
                        }

                        Store (\_SB.PC00.PEG1.PEGP.LTRE, \_SB.PC00.PEG1.LREN) /* External reference */
                        Store (One, \_SB.PC00.PEG1.CEDR) /* External reference */
                        Store (\_SB.PC00.DSSV, \_SB.PC00.PEG1.PEGP.SSSV) /* External reference */
                    }
                }
                Else
                {
                    PON ()
                    L23D ()
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If (LEqual (VDID, 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If (LEqual (GPRS (), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (DGPV, 0x10DE))
                {
                    If (LEqual (\_SB.PC00.TDGC, One))
                    {
                        CreateField (\_SB.PC00.TGPC, Zero, 0x03, GPPC)
                        If (LEqual (ToInteger (GPPC), One))
                        {
                            \_SB.PC00.GC6I ()
                        }
                        ElseIf (LEqual (ToInteger (GPPC), 0x02))
                        {
                            \_SB.PC00.GC6I ()
                        }
                    }
                    Else
                    {
                        Store (\_SB.PC00.PEG1.LREN, \_SB.PC00.PEG1.PEGP.LTRE) /* External reference */
                        DL23 ()
                        POFF ()
                    }
                }
                Else
                {
                    DL23 ()
                    POFF ()
                }
            }
        }

        Method (GPPR, 0, NotSerialized)
        {
            If (CondRefOf (WAKP))
            {
                If (LAnd (LNotEqual (WAKP, Zero), LEqual (WKEN, Zero)))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (PCPB))
            {
                If (LNotEqual (PCPB, Zero))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (DVES))
            {
                If (LEqual (DVES (), Zero))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (GPRS, 0, NotSerialized)
        {
            If (LAnd (CondRefOf (PRTP), LEqual (PRTP, 0x04)))
            {
                If (CondRefOf (\HBCL))
                {
                    If (LOr (LNotEqual (\HBCL, 0xFF), LLessEqual (\HBCL, 0x02)))
                    {
                        If (LEqual (\HBCL, SLOT))
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            If (LAnd (CondRefOf (PRTP), LEqual (PRTP, 0x02)))
            {
                If (CondRefOf (HBSL))
                {
                    Divide (Subtract (SLOT, One), 0x04, , Local0)
                    If (And (HBSL, ShiftLeft (One, Local0)))
                    {
                        Return (Zero)
                    }
                }

                If (LAnd (CondRefOf (\HBCL), CondRefOf (\HBPL)))
                {
                    If (LOr (LNotEqual (\HBCL, 0xFF), LLessEqual (\HBCL, 0x02)))
                    {
                        If (LEqual (\HBPL, Subtract (SLOT, One)))
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            If (CondRefOf (RD3C))
            {
                If (LNotEqual (RD3C, 0x02))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (PRMV))
            {
                If (LEqual (PRMV, One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (PSTA, 0, NotSerialized)
        {
            If (\PIN.STA (RSTG))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            If (CondRefOf (CEMP))
            {
                CEMP (One)
            }

            If (CondRefOf (WAKG))
            {
                \_SB.SHPO (WAKG, One)
                \_SB.CAGS (WAKG)
            }

            If (CondRefOf (DHDW))
            {
                DHDW ()
            }

            If (LAnd (CondRefOf (PRTP), LEqual (PRTP, 0x02)))
            {
                \_SB.PSD0 (SLOT)
            }

            If (CondRefOf (SCLK))
            {
                SPCO (SCLK, One)
            }

            If (CondRefOf (PWRG))
            {
                If (CondRefOf (WOFF))
                {
                    If (LNotEqual (WOFF, Zero))
                    {
                        Divide (Subtract (Timer, WOFF), 0x2710, , Local0)
                        If (LLess (Local0, 0xC8))
                        {
                            Sleep (Subtract (0xC8, Local0))
                        }

                        Store (Zero, WOFF) /* \_SB_.PC00.PEG1.WOFF */
                    }
                }

                \PIN.ON (PWRG)
                Sleep (DLPW)
                If (LEqual (OG00, 0x14))
                {
                    Sleep (One)
                }
                ElseIf (LEqual (OG00, 0x15))
                {
                    Sleep (One)
                }
                Else
                {
                    Sleep (0x0F)
                }
            }

            If (CondRefOf (SCLK))
            {
                If (CondRefOf (TMCS))
                {
                    SPCX (SCLK, One, TMCS)
                }
                Else
                {
                    SPCO (SCLK, One)
                }
            }

            \PIN.OFF (RSTG)
            Sleep (DLHR)
            Store (Zero, \_SB.PC00.LPCB.EC0.DSMD) /* External reference */
            Sleep (0x64)
        }

        Method (POFF, 0, NotSerialized)
        {
            Divide (LNRD, 0x03E8, , Local1)
            Sleep (Local1)
            \PIN.ON (RSTG)
            If (LAnd (CondRefOf (PRTP), LEqual (PRTP, 0x02)))
            {
                \_SB.PSD3 (SLOT)
            }

            If (CondRefOf (SCLK))
            {
                If (CondRefOf (TMCS))
                {
                    SPCX (SCLK, Zero, TMCS)
                }
                Else
                {
                    SPCO (SCLK, Zero)
                }
            }

            If (CondRefOf (PWRG))
            {
                If (LEqual (GPPR (), One))
                {
                    \PIN.OFF (PWRG)
                    Sleep (DLPW)
                }

                If (CondRefOf (WOFF))
                {
                    Store (Timer, WOFF) /* \_SB_.PC00.PEG1.WOFF */
                }
            }

            If (CondRefOf (WAKG))
            {
                If (LAnd (LNotEqual (WAKG, Zero), WKEN))
                {
                    \_SB.SHPO (WAKG, Zero)
                }
            }

            If (CondRefOf (EHDW))
            {
                EHDW ()
            }

            If (CondRefOf (CEMP))
            {
                CEMP (Zero)
            }

            Store (One, \_SB.PC00.LPCB.EC0.DSMD) /* External reference */
            Sleep (0x64)
        }

        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            Return (Package (0x01)
            {
                PXP
            })
        }

        Method (UPRD, 1, Serialized)
        {
            If (LLessEqual (Arg0, 0x2710))
            {
                Store (Arg0, LNRD) /* \_SB_.PC00.PEG1.LNRD */
            }

            Return (LNRD) /* \_SB_.PC00.PEG1.LNRD */
        }
    }

    Scope (\_SB.PC00)
    {
        PowerResource (PAUD, 0x00, 0x0000)
        {
            Name (PSTA, One)
            Name (ONTM, Zero)
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                Store (One, _STA) /* \_SB_.PC00.PAUD._STA */
                PUAM ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                Store (Zero, _STA) /* \_SB_.PC00.PAUD._STA */
                PUAM ()
            }

            Method (PUAM, 0, Serialized)
            {
                If (LAnd (LEqual (^_STA, Zero), LNotEqual (\UAMS, Zero))){}
                ElseIf (LNotEqual (^PSTA, One))
                {
                    Store (One, ^PSTA) /* \_SB_.PC00.PAUD.PSTA */
                    Store (Timer, ^ONTM) /* \_SB_.PC00.PAUD.ONTM */
                }
            }
        }
    }

    If (LNotEqual (\_SB.PC00.HDAS.VDID, 0xFFFFFFFF))
    {
        Scope (\_SB.PC00.HDAS)
        {
            Method (PS0X, 0, Serialized)
            {
                If (LEqual (\_SB.PC00.PAUD.ONTM, Zero))
                {
                    Return (Zero)
                }

                Divide (Subtract (Timer, \_SB.PC00.PAUD.ONTM), 0x2710, , Local0)
                Add (AUDD, VRRD, Local1)
                If (LLess (Local0, Local1))
                {
                    Sleep (Subtract (Local1, Local0))
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                \_SB.PC00.PAUD
            })
        }
    }

    Scope (\_GPE)
    {
        Method (AL6F, 0, NotSerialized)
        {
            If (\_SB.ISME (WLWK))
            {
                \_SB.SHPO (WLWK, One)
                Notify (\_SB.PC00.RP05, 0x02) // Device Wake
                \_SB.CAGS (WLWK)
            }

            If (\_SB.ISME (WWKP))
            {
                \_SB.SHPO (WWKP, One)
                Notify (\_SB.PC00.RP06, 0x02) // Device Wake
                \_SB.CAGS (WWKP)
            }
        }
    }
}

