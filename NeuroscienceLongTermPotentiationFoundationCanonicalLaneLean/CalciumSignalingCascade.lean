import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundation

structure CalciumSignalingPackage where
  calciumEntry : Prop
  calmodulinActivation : Prop
  camKIIActivation : Prop
  pkaActivation : Prop
  crebPhosphorylation : Prop
  geneExpression : Prop

structure CalciumSignalingEvidence (C : CalciumSignalingPackage) where
  calciumEntryClosed : C.calciumEntry
  calmodulinActivationClosed : C.calmodulinActivation
  camKIIActivationClosed : C.camKIIActivation
  pkaActivationClosed : C.pkaActivation
  crebPhosphorylationClosed : C.crebPhosphorylation
  geneExpressionClosed : C.geneExpression

def CalciumSignalingClosed (C : CalciumSignalingPackage) : Prop :=
  C.calciumEntry ∧ C.calmodulinActivation ∧ C.camKIIActivation ∧
  C.pkaActivation ∧ C.crebPhosphorylation ∧ C.geneExpression

theorem calcium_signaling_closed_from_evidence (C : CalciumSignalingPackage) (E : CalciumSignalingEvidence C) :
    CalciumSignalingClosed C := by
  exact And.intro E.calciumEntryClosed
    (And.intro E.calmodulinActivationClosed
      (And.intro E.camKIIActivationClosed
        (And.intro E.pkaActivationClosed
          (And.intro E.crebPhosphorylationClosed E.geneExpressionClosed))))

end NeuroscienceLongTermPotentiationFoundation
end HautevilleHouse