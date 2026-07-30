import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundation

structure LTPMaintenancePackage where
  structuralPlasticity : Prop
  dendriticSpineEnlargement : Prop
  newProteinSynthesis : Prop
  persistentKinaseActivity : Prop
  synapticTagging : Prop
  lateLTPExpression : Prop

structure LTPMaintenanceEvidence (L : LTPMaintenancePackage) where
  structuralPlasticityClosed : L.structuralPlasticity
  dendriticSpineEnlargementClosed : L.dendriticSpineEnlargement
  newProteinSynthesisClosed : L.newProteinSynthesis
  persistentKinaseActivityClosed : L.persistentKinaseActivity
  synapticTaggingClosed : L.synapticTagging
  lateLTPExpressionClosed : L.lateLTPExpression

def LTPMaintenanceClosed (L : LTPMaintenancePackage) : Prop :=
  L.structuralPlasticity ∧ L.dendriticSpineEnlargement ∧ L.newProteinSynthesis ∧
  L.persistentKinaseActivity ∧ L.synapticTagging ∧ L.lateLTPExpression

theorem ltp_maintenance_closed_from_evidence (L : LTPMaintenancePackage) (E : LTPMaintenanceEvidence L) :
    LTPMaintenanceClosed L := by
  exact And.intro E.structuralPlasticityClosed
    (And.intro E.dendriticSpineEnlargementClosed
      (And.intro E.newProteinSynthesisClosed
        (And.intro E.persistentKinaseActivityClosed
          (And.intro E.synapticTaggingClosed E.lateLTPExpressionClosed))))

end NeuroscienceLongTermPotentiationFoundation
end HautevilleHouse