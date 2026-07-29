import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemma

structure EntropyPesinFormulaPackage (M : Type u) [TopologicalSpace M] [MetricSpace M] [CompactSpace M] where
  dynamicalSystem : M → M
  invariantMeasure : Type v
  metricEntropy : ℝ
  lyapunovExponents : List ℝ
  pesinFormula : Prop
  entropyUpperBound : Prop
  entropyLowerBound : Prop

structure EntropyPesinFormulaEvidence {M : Type u} [TopologicalSpace M] [MetricSpace M] [CompactSpace M]
    (P : EntropyPesinFormulaPackage M) where
  pesinFormulaClosed : P.pesinFormula
  entropyUpperBoundClosed : P.entropyUpperBound
  entropyLowerBoundClosed : P.entropyLowerBound

def EntropyPesinFormulaClosed {M : Type u} [TopologicalSpace M] [MetricSpace M] [CompactSpace M]
    (P : EntropyPesinFormulaPackage M) : Prop :=
  P.pesinFormula ∧ P.entropyUpperBound ∧ P.entropyLowerBound

theorem entropy_pesin_formula_closed_from_evidence {M : Type u} [TopologicalSpace M] [MetricSpace M] [CompactSpace M]
    (P : EntropyPesinFormulaPackage M) (E : EntropyPesinFormulaEvidence P) :
    EntropyPesinFormulaClosed P := by
  exact And.intro E.pesinFormulaClosed
    (And.intro E.entropyUpperBoundClosed E.entropyLowerBoundClosed)

end DimensionTheorySmoothDynamicalSystemsLemma
end HautevilleHouse
