import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean

structure SynapticWeightDynamicsPackage where
  calciumSignalType : Type u
  timeDomain : Type v
  weightEvolution : calciumSignalType -> timeDomain -> Prop
  hebbianCovariance : Prop
  plasticityThreshold : Prop
  heterosynapticConstraint : Prop

structure SynapticWeightDynamicsEvidence (S : SynapticWeightDynamicsPackage) where
  calciumSignalClosed : Prop
  timeDomainContinuous : Prop
  weightEvolutionClosed : S.weightEvolution
  hebbianCovarianceClosed : S.hebbianCovariance
  plasticityThresholdClosed : S.plasticityThreshold
  heterosynapticConstraintClosed : S.heterosynapticConstraint

def SynapticWeightDynamicsClosed (S : SynapticWeightDynamicsPackage) : Prop :=
  S.weightEvolution ∧ S.hebbianCovariance ∧ S.plasticityThreshold ∧ S.heterosynapticConstraint

theorem synaptic_weight_dynamics_closed_from_evidence (S : SynapticWeightDynamicsPackage)
    (E : SynapticWeightDynamicsEvidence S) : SynapticWeightDynamicsClosed S := by
  exact And.intro E.weightEvolutionClosed
    (And.intro E.hebbianCovarianceClosed
      (And.intro E.plasticityThresholdClosed E.heterosynapticConstraintClosed))

end NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean
end HautevilleHouse