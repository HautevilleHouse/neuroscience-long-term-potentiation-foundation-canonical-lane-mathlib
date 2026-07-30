import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean

structure CaMKIISignalingModel where
  calciumCalmodulinBinding : Type u
  kinaseActivation : Type v
  phosphorylationTargets : Type w
  synapticInsertion : Type x
  kinaseCascade : Prop
  ampaTraffic : Prop
  structuralPlasticity : Prop
  kinaseCascadeClosed : kinaseCascade
  ampaTrafficClosed : ampaTraffic
  structuralPlasticityClosed : structuralPlasticity

structure CaMKIISignalingEvidence (C : CaMKIISignalingModel) where
  kinaseCascadeClosed : C.kinaseCascade
  ampaTrafficClosed : C.ampaTraffic
  structuralPlasticityClosed : C.structuralPlasticity

def CaMKIISignalingClosed (C : CaMKIISignalingModel) : Prop :=
  C.kinaseCascade ∧ C.ampaTraffic ∧ C.structuralPlasticity

theorem camkii_signaling_closed_from_evidence (C : CaMKIISignalingModel) (E : CaMKIISignalingEvidence C) : CaMKIISignalingClosed C :=
  And.intro E.kinaseCascadeClosed (And.intro E.ampaTrafficClosed E.structuralPlasticityClosed)

end HautevilleHouse
end NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean