import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundation

structure HebbianLearningPackage where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  coincidenceDetection : Prop
  synapticWeightUpdate : Prop
  ltpInduction : Prop
  ltdInduction : Prop

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  coincidenceDetectionClosed : H.coincidenceDetection
  synapticWeightUpdateClosed : H.synapticWeightUpdate
  ltpInductionClosed : H.ltpInduction
  ltdInductionClosed : H.ltdInduction

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧ H.coincidenceDetection ∧
  H.synapticWeightUpdate ∧ H.ltpInduction ∧ H.ltdInduction

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage) (E : HebbianLearningEvidence H) :
    HebbianLearningClosed H := by
  exact And.intro E.presynapticActivityClosed
    (And.intro E.postsynapticActivityClosed
      (And.intro E.coincidenceDetectionClosed
        (And.intro E.synapticWeightUpdateClosed
          (And.intro E.ltpInductionClosed E.ltdInductionClosed))))

end NeuroscienceLongTermPotentiationFoundation
end HautevilleHouse