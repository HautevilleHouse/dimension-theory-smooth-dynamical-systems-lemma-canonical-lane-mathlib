import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemma

structure InvariantMeasuresPackage (M : Type u) [TopologicalSpace M] [MetricSpace M] [CompactSpace M] where
  dynamicalSystem : M → M
  invariantMeasure : Type v
  measurePreserving : Prop
  ergodicDecomposition : Prop
  entropyDefined : Prop

structure InvariantMeasuresEvidence {M : Type u} [TopologicalSpace M] [MetricSpace M] [CompactSpace M]
    (P : InvariantMeasuresPackage M) where
  measurePreservingClosed : P.measurePreserving
  ergodicDecompositionClosed : P.ergodicDecomposition
  entropyDefinedClosed : P.entropyDefined

def InvariantMeasuresClosed {M : Type u} [TopologicalSpace M] [MetricSpace M] [CompactSpace M]
    (P : InvariantMeasuresPackage M) : Prop :=
  P.measurePreserving ∧ P.ergodicDecomposition ∧ P.entropyDefined

theorem invariant_measures_closed_from_evidence {M : Type u} [TopologicalSpace M] [MetricSpace M] [CompactSpace M]
    (P : InvariantMeasuresPackage M) (E : InvariantMeasuresEvidence P) :
    InvariantMeasuresClosed P := by
  exact And.intro E.measurePreservingClosed
    (And.intro E.ergodicDecompositionClosed E.entropyDefinedClosed)

end DimensionTheorySmoothDynamicalSystemsLemma
end HautevilleHouse
