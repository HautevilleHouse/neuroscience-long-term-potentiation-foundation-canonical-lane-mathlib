import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean

structure NMDAReceptorActivationPackage where
  membranePotential : Type u
  magnesiumBlock : Prop
  glutamateBinding : Prop
  calciumInflux : Prop
  coincidenceDetection : Prop

structure NMDAReceptorActivationEvidence (N : NMDAReceptorActivationPackage) where
  membranePotentialClosed : Prop
  magnesiumBlockClosed : N.magnesiumBlock
  glutamateBindingClosed : N.glutamateBinding
  calciumInfluxClosed : N.calciumInflux
  coincidenceDetectionClosed : N.coincidenceDetection

def NMDAReceptorActivationClosed (N : NMDAReceptorActivationPackage) : Prop :=
  N.magnesiumBlock ∧ N.glutamateBinding ∧ N.calciumInflux ∧ N.coincidenceDetection

theorem nmda_receptor_activation_closed_from_evidence (N : NMDAReceptorActivationPackage)
    (E : NMDAReceptorActivationEvidence N) : NMDAReceptorActivationClosed N := by
  exact And.intro E.magnesiumBlockClosed
    (And.intro E.glutamateBindingClosed
      (And.intro E.calciumInfluxClosed E.coincidenceDetectionClosed))

end NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean
end HautevilleHouse