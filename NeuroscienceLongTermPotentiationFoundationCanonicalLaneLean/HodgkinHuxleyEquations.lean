import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundation

structure HodgkinHuxleyPackage where
  membraneCapacitance : Prop
  sodiumConductance : Prop
  potassiumConductance : Prop
  leakConductance : Prop
  gatingVariables : Prop
  actionPotentialGenerated : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membraneCapacitanceClosed : H.membraneCapacitance
  sodiumConductanceClosed : H.sodiumConductance
  potassiumConductanceClosed : H.potassiumConductance
  leakConductanceClosed : H.leakConductance
  gatingVariablesClosed : H.gatingVariables
  actionPotentialGeneratedClosed : H.actionPotentialGenerated

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membraneCapacitance ∧ H.sodiumConductance ∧ H.potassiumConductance ∧
  H.leakConductance ∧ H.gatingVariables ∧ H.actionPotentialGenerated

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.membraneCapacitanceClosed
    (And.intro E.sodiumConductanceClosed
      (And.intro E.potassiumConductanceClosed
        (And.intro E.leakConductanceClosed
          (And.intro E.gatingVariablesClosed E.actionPotentialGeneratedClosed))))

end NeuroscienceLongTermPotentiationFoundation
end HautevilleHouse