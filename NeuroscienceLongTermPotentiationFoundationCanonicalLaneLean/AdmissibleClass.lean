import NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean.TheoremStatement
import NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : LTPAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LTPWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean
end HautevilleHouse