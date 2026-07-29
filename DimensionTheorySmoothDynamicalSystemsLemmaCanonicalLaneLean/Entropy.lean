import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure MetricEntropyPackage where
  topologicalEntropyDefined : Prop
  measureTheoreticEntropyDefined : Prop
  variationalPrinciple : Prop
  entropyExpansiveness : Prop

structure MetricEntropyEvidence (E : MetricEntropyPackage) where
  topologicalEntropyDefinedClosed : E.topologicalEntropyDefined
  measureTheoreticEntropyDefinedClosed : E.measureTheoreticEntropyDefined
  variationalPrincipleClosed : E.variationalPrinciple
  entropyExpansivenessClosed : E.entropyExpansiveness

def MetricEntropyClosed (E : MetricEntropyPackage) : Prop :=
  E.topologicalEntropyDefined ∧ E.measureTheoreticEntropyDefined ∧ E.variationalPrinciple ∧ E.entropyExpansiveness

theorem metric_entropy_closed_from_evidence (E : MetricEntropyPackage) (Ev : MetricEntropyEvidence E) :
    MetricEntropyClosed E := by
  exact And.intro Ev.topologicalEntropyDefinedClosed
    (And.intro Ev.measureTheoreticEntropyDefinedClosed
      (And.intro Ev.variationalPrincipleClosed Ev.entropyExpansivenessClosed))

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse
