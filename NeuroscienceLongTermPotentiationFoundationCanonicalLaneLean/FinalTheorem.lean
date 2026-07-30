import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundation

def ConstrainedLTPClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ltp_endgame (A : AdmissibleClass) :
    ConstrainedLTPClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceLongTermPotentiationFoundation
end HautevilleHouse