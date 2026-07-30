import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean

structure NMDAReceptorModel where
  glutamateBinding : Type u
  glycineBinding : Type v
  voltageDependentBlock : Type w
  calciumInflux : Type x
  magnesiumBlock : Prop
  receptorActivation : Prop
  plasticityInduction : Prop
  magnesiumBlockClosed : magnesiumBlock
  receptorActivationClosed : receptorActivation
  plasticityInductionClosed : plasticityInduction

structure NMDAReceptorEvidence (N : NMDAReceptorModel) where
  magnesiumBlockClosed : N.magnesiumBlock
  receptorActivationClosed : N.receptorActivation
  plasticityInductionClosed : N.plasticityInduction

def NMDAReceptorClosed (N : NMDAReceptorModel) : Prop :=
  N.magnesiumBlock ∧ N.receptorActivation ∧ N.plasticityInduction

theorem nmda_receptor_closed_from_evidence (N : NMDAReceptorModel) (E : NMDAReceptorEvidence N) : NMDAReceptorClosed N :=
  And.intro E.magnesiumBlockClosed (And.intro E.receptorActivationClosed E.plasticityInductionClosed)

end HautevilleHouse
end NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean