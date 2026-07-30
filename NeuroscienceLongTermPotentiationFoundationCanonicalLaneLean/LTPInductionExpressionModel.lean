import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean.HodgkinHuxleyEquations
import HautevilleHouse.NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean.HebbianLearningRule
import HautevilleHouse.NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean.NMDAReceptorDynamics
import HautevilleHouse.NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean.SynapticPlasticityMechanisms
import HautevilleHouse.NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean.CalciumSignalingPathway

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean

structure LTPInductionExpressionPackage where
  hodgkinHuxley : HodgkinHuxleyPackage
  hebbian : HebbianLearningPackage
  nmda : NMDAReceptorPackage
  plasticity : SynapticPlasticityPackage
  calcium : CalciumSignalingPackage
  inductionTriggered : Prop
  expressionPersistent : Prop

structure LTPInductionExpressionEvidence (L : LTPInductionExpressionPackage) where
  hodgkinHuxleyEvidence : HodgkinHuxleyEvidence L.hodgkinHuxley
  hebbianEvidence : HebbianLearningEvidence L.hebbian
  nmdaEvidence : NMDAReceptorEvidence L.nmda
  plasticityEvidence : SynapticPlasticityEvidence L.plasticity
  calciumEvidence : CalciumSignalingEvidence L.calcium
  inductionTriggeredClosed : L.inductionTriggered
  expressionPersistentClosed : L.expressionPersistent

def LTPInductionExpressionClosed (L : LTPInductionExpressionPackage) : Prop :=
  HodgkinHuxleyClosed L.hodgkinHuxley ∧ HebbianLearningClosed L.hebbian ∧
  NMDAReceptorClosed L.nmda ∧ SynapticPlasticityClosed L.plasticity ∧
  CalciumSignalingClosed L.calcium ∧ L.inductionTriggered ∧ L.expressionPersistent

theorem ltp_induction_expression_closed_from_evidence (L : LTPInductionExpressionPackage) (E : LTPInductionExpressionEvidence L) :
    LTPInductionExpressionClosed L := by
  have h1 := hodgkin_huxley_closed_from_evidence L.hodgkinHuxley E.hodgkinHuxleyEvidence
  have h2 := hebbian_learning_closed_from_evidence L.hebbian E.hebbianEvidence
  have h3 := nmda_receptor_closed_from_evidence L.nmda E.nmdaEvidence
  have h4 := synaptic_plasticity_closed_from_evidence L.plasticity E.plasticityEvidence
  have h5 := calcium_signaling_closed_from_evidence L.calcium E.calciumEvidence
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 (And.intro h5 (And.intro E.inductionTriggeredClosed E.expressionPersistentClosed)))))

end NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean
end HautevilleHouse