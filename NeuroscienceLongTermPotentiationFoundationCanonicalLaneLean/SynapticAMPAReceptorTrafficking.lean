import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundation

structure AMPAReceptorTraffickingPackage where
  receptorPhosphorylation : Prop
  exocytosisFromDendriticSpine : Prop
  membraneInsertion : Prop
  receptorStabilization : Prop
  increasedChannelConductance : Prop
  synapticStrengthIncreased : Prop

structure AMPAReceptorTraffickingEvidence (A : AMPAReceptorTraffickingPackage) where
  receptorPhosphorylationClosed : A.receptorPhosphorylation
  exocytosisFromDendriticSpineClosed : A.exocytosisFromDendriticSpine
  membraneInsertionClosed : A.membraneInsertion
  receptorStabilizationClosed : A.receptorStabilization
  increasedChannelConductanceClosed : A.increasedChannelConductance
  synapticStrengthIncreasedClosed : A.synapticStrengthIncreased

def AMPAReceptorTraffickingClosed (A : AMPAReceptorTraffickingPackage) : Prop :=
  A.receptorPhosphorylation ∧ A.exocytosisFromDendriticSpine ∧ A.membraneInsertion ∧
  A.receptorStabilization ∧ A.increasedChannelConductance ∧ A.synapticStrengthIncreased

theorem ampa_receptor_trafficking_closed_from_evidence (A : AMPAReceptorTraffickingPackage) (E : AMPAReceptorTraffickingEvidence A) :
    AMPAReceptorTraffickingClosed A := by
  exact And.intro E.receptorPhosphorylationClosed
    (And.intro E.exocytosisFromDendriticSpineClosed
      (And.intro E.membraneInsertionClosed
        (And.intro E.receptorStabilizationClosed
          (And.intro E.increasedChannelConductanceClosed E.synapticStrengthIncreasedClosed))))

end NeuroscienceLongTermPotentiationFoundation
end HautevilleHouse