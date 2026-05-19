// Lean compiler output
// Module: Proofs.GrandCoherence
// Imports: public import Init public import Proofs.CCC public import Proofs.Frobenius_minimal public import Proofs.Hopf public import Proofs.HoTT public import Proofs.LinearLogic public import Proofs.Quantum public import Proofs.StringDiagrams public import Proofs.Topos public import Proofs.SelfImscription
#include <lean/lean.h>
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C" {
#endif
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_ob3ect_x2dproofs_Proofs_CCC(uint8_t builtin);
lean_object* initialize_ob3ect_x2dproofs_Proofs_Frobenius__minimal(uint8_t builtin);
lean_object* initialize_ob3ect_x2dproofs_Proofs_Hopf(uint8_t builtin);
lean_object* initialize_ob3ect_x2dproofs_Proofs_HoTT(uint8_t builtin);
lean_object* initialize_ob3ect_x2dproofs_Proofs_LinearLogic(uint8_t builtin);
lean_object* initialize_ob3ect_x2dproofs_Proofs_Quantum(uint8_t builtin);
lean_object* initialize_ob3ect_x2dproofs_Proofs_StringDiagrams(uint8_t builtin);
lean_object* initialize_ob3ect_x2dproofs_Proofs_Topos(uint8_t builtin);
lean_object* initialize_ob3ect_x2dproofs_Proofs_SelfImscription(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_ob3ect_x2dproofs_Proofs_GrandCoherence(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ob3ect_x2dproofs_Proofs_CCC(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ob3ect_x2dproofs_Proofs_Frobenius__minimal(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ob3ect_x2dproofs_Proofs_Hopf(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ob3ect_x2dproofs_Proofs_HoTT(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ob3ect_x2dproofs_Proofs_LinearLogic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ob3ect_x2dproofs_Proofs_Quantum(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ob3ect_x2dproofs_Proofs_StringDiagrams(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ob3ect_x2dproofs_Proofs_Topos(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ob3ect_x2dproofs_Proofs_SelfImscription(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
