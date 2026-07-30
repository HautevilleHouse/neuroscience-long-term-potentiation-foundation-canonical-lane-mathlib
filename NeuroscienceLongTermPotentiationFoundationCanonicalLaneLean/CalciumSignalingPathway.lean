import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean

structure CalciumSignalingPackage where
  calciumSource : Type u
  calciumBuffer : Type v
  calmodulinActivation : Prop
  camkiiActivation : Prop
  phosphataseRegulation : Prop

structure CalciumSignalingEvidence (C : CalciumSignalingPackage) where
  calmodulinActivationClosed : C.calmodulinActivation
  camkiiActivationClosed : C.camkiiActivation
  phosphataseRegulationClosed : C.phosphataseRegulation

def CalciumSignalingClosed (C : CalciumSignalingPackage) : Prop :=
  C.calmodulinActivation ∧ C.camkiiActivation ∧ C.phosphataseRegulation

theorem calcium_signaling_closed_from_evidence (C : CalciumSignalingPackage) (E : CalciumSignalingEvidence C) :
    CalciumSignalingClosed C := by
  exact And.intro E.calmodulinActivationClosed (And.intro E.camkiiActivationClosed E.phosphataseRegulationClosed)

end NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean
end HautevilleHouse