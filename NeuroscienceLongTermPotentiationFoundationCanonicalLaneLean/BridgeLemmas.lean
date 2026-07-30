import NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LTPWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean
end HautevilleHouse