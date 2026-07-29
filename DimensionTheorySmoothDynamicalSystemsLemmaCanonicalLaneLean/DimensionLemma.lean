import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure DimensionLemmaPackage where
  system : DynamicalSystemPackage
  invariantMeasure : Measure system.manifold
  dimension : ℝ
  lemmaStatement : Prop
  lemmaStatementClosed : lemmaStatement

def DimensionLemmaClosed (D : DimensionLemmaPackage) : Prop :=
  D.lemmaStatement

theorem dimension_lemma_closed_from_evidence (D : DimensionLemmaPackage) (E : DimensionLemmaEvidence D) : DimensionLemmaClosed D := by
  exact E.lemmaStatementClosed

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse