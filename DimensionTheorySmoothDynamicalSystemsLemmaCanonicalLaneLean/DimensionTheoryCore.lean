import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure DimensionTheoryCorePackage where
  hausdorffDimension : Type u
  boxCountingDimension : Type v
  dimensionEquality : Prop
  capacityDimension : Prop
  ledrappierYoungTheorem : Prop

structure DimensionTheoryCoreEvidence (D : DimensionTheoryCorePackage) where
  dimensionEqualityClosed : D.dimensionEquality
  capacityDimensionClosed : D.capacityDimension
  ledrappierYoungTheoremClosed : D.ledrappierYoungTheorem

def DimensionTheoryCoreClosed (D : DimensionTheoryCorePackage) : Prop :=
  D.dimensionEquality ∧ D.ledrappierYoungTheorem

theorem dimension_theory_core_closed_from_evidence (D : DimensionTheoryCorePackage)
    (E : DimensionTheoryCoreEvidence D) : DimensionTheoryCoreClosed D := by
  exact And.intro E.dimensionEqualityClosed E.ledrappierYoungTheoremClosed

end HautevilleHouse.DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean