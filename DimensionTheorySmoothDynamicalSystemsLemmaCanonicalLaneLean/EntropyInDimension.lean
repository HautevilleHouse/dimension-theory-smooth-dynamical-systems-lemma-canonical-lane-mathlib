import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure EntropyInDimensionPackage where
  system : DynamicalSystemPackage
  entropy : ℝ
  dimension : ℝ
  entropyFormula : Prop
  dimensionUpperBound : Prop
  entropyFormulaClosed : entropyFormula
  dimensionUpperBoundClosed : dimensionUpperBound

def EntropyInDimensionClosed (E : EntropyInDimensionPackage) : Prop :=
  E.entropyFormula ∧ E.dimensionUpperBound

theorem entropy_in_dimension_closed_from_evidence (E : EntropyInDimensionPackage) (Ev : EntropyInDimensionEvidence E) : EntropyInDimensionClosed E := by
  exact And.intro Ev.entropyFormulaClosed Ev.dimensionUpperBoundClosed

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse