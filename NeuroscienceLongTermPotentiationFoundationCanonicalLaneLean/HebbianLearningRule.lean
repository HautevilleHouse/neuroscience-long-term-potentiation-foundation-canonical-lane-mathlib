import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean

structure HebbianLearningPackage where
  preSynapticActivity : Type u
  postSynapticActivity : Type v
  weightChangeRule : Prop
  correlationDependence : Prop
  cooperativity : Prop
  specificity : Prop

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  weightChangeRuleClosed : H.weightChangeRule
  correlationDependenceClosed : H.correlationDependence
  cooperativityClosed : H.cooperativity
  specificityClosed : H.specificity

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.weightChangeRule ∧ H.correlationDependence ∧ H.cooperativity ∧ H.specificity

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage) (E : HebbianLearningEvidence H) :
    HebbianLearningClosed H := by
  exact And.intro E.weightChangeRuleClosed (And.intro E.correlationDependenceClosed (And.intro E.cooperativityClosed E.specificityClosed))

end NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean
end HautevilleHouse