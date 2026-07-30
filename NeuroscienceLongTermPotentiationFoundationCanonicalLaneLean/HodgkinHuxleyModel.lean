import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean

structure HodgkinHuxleyModel where
  membraneVoltage : Type u
  sodiumCurrent : Type v
  potassiumCurrent : Type w
  leakageCurrent : Type x
  gatingVariables : Type y
  voltageClampData : Prop
  rateConstants : Prop
  actionPotentialSimulation : Prop
  voltageClampDataClosed : voltageClampData
  rateConstantsClosed : rateConstants
  actionPotentialSimulationClosed : actionPotentialSimulation

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModel) where
  voltageClampDataClosed : H.voltageClampData
  rateConstantsClosed : H.rateConstants
  actionPotentialSimulationClosed : H.actionPotentialSimulation

def HodgkinHuxleyClosed (H : HodgkinHuxleyModel) : Prop :=
  H.voltageClampData ∧ H.rateConstants ∧ H.actionPotentialSimulation

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyModel) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H :=
  And.intro E.voltageClampDataClosed (And.intro E.rateConstantsClosed E.actionPotentialSimulationClosed)

end HautevilleHouse
end NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean