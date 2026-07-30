import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean

structure SynapticTaggingModel where
  tagSet : Type u
  captureSignal : Type v
  proteinSynthesis : Type w
  latePhaseLTP : Type x
  tagBinding : Prop
  captureMechanism : Prop
  consolidation : Prop
  tagBindingClosed : tagBinding
  captureMechanismClosed : captureMechanism
  consolidationClosed : consolidation

structure SynapticTaggingEvidence (S : SynapticTaggingModel) where
  tagBindingClosed : S.tagBinding
  captureMechanismClosed : S.captureMechanism
  consolidationClosed : S.consolidation

def SynapticTaggingClosed (S : SynapticTaggingModel) : Prop :=
  S.tagBinding ∧ S.captureMechanism ∧ S.consolidation

theorem synaptic_tagging_closed_from_evidence (S : SynapticTaggingModel) (E : SynapticTaggingEvidence S) : SynapticTaggingClosed S :=
  And.intro E.tagBindingClosed (And.intro E.captureMechanismClosed E.consolidationClosed)

end HautevilleHouse
end NeuroscienceLongTermPotentiationFoundationCanonicalLaneLean