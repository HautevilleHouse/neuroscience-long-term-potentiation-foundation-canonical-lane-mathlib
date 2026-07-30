import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundation

structure NMDAReceptorPackage where
  glutamateBinding : Prop
  glycineBinding : Prop
  magnesiumBlock : Prop
  calciumInflux : Prop
  voltageDependence : Prop
  channelOpening : Prop

structure NMDAReceptorEvidence (N : NMDAReceptorPackage) where
  glutamateBindingClosed : N.glutamateBinding
  glycineBindingClosed : N.glycineBinding
  magnesiumBlockClosed : N.magnesiumBlock
  calciumInfluxClosed : N.calciumInflux
  voltageDependenceClosed : N.voltageDependence
  channelOpeningClosed : N.channelOpening

def NMDAReceptorClosed (N : NMDAReceptorPackage) : Prop :=
  N.glutamateBinding ∧ N.glycineBinding ∧ N.magnesiumBlock ∧
  N.calciumInflux ∧ N.voltageDependence ∧ N.channelOpening

theorem nmda_receptor_closed_from_evidence (N : NMDAReceptorPackage) (E : NMDAReceptorEvidence N) :
    NMDAReceptorClosed N := by
  exact And.intro E.glutamateBindingClosed
    (And.intro E.glycineBindingClosed
      (And.intro E.magnesiumBlockClosed
        (And.intro E.calciumInfluxClosed
          (And.intro E.voltageDependenceClosed E.channelOpeningClosed))))

end NeuroscienceLongTermPotentiationFoundation
end HautevilleHouse