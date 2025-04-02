// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VTestbench.h for the primary calling header

#include "VTestbench__pch.h"
#include "VTestbench__Syms.h"
#include "VTestbench___024root.h"

extern const VlWide<17>/*543:0*/ VTestbench__ConstPool__CONST_hf51c70a8_0;

VL_ATTR_COLD void VTestbench___024root___eval_initial__TOP(VTestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestbench___024root___eval_initial__TOP\n"); );
    // Body
    vlSymsp->_vm_contextp__->dumpfile(VL_CVT_PACK_STR_NW(17, VTestbench__ConstPool__CONST_hf51c70a8_0));
    vlSymsp->_traceDumpOpen();
}
