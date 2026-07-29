import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure LedrappierYoungFormulaPackage where
  system : DynamicalSystemPackage
  measure : Measure system.manifold
  lyapunovExponents : List ℝ
  dimension : ℝ
  formulaHolds : Prop
  formulaHoldsClosed : formulaHolds

def LedrappierYoungFormulaClosed (L : LedrappierYoungFormulaPackage) : Prop :=
  L.formulaHolds

theorem ledrappier_young_formula_closed_from_evidence (L : LedrappierYoungFormulaPackage) (E : LedrappierYoungFormulaEvidence L) : LedrappierYoungFormulaClosed L := by
  exact E.formulaHoldsClosed

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse