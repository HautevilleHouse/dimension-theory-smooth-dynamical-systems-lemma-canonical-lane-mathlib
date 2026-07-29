import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemma

structure HausdorffDimensionPackage (M : Type u) [TopologicalSpace M] [MetricSpace M] where
  dynamicalSystem : M → M
  attractorSet : Set M
  hausdorffMeasure : ℝ → ℝ
  hausdorffDimension : ℝ
  dimensionDefinition : Prop
  dimensionProperties : Prop

structure HausdorffDimensionEvidence {M : Type u} [TopologicalSpace M] [MetricSpace M]
    (P : HausdorffDimensionPackage M) where
  dimensionDefinitionClosed : P.dimensionDefinition
  dimensionPropertiesClosed : P.dimensionProperties

def HausdorffDimensionClosed {M : Type u} [TopologicalSpace M] [MetricSpace M]
    (P : HausdorffDimensionPackage M) : Prop :=
  P.dimensionDefinition ∧ P.dimensionProperties

theorem hausdorff_dimension_closed_from_evidence {M : Type u} [TopologicalSpace M] [MetricSpace M]
    (P : HausdorffDimensionPackage M) (E : HausdorffDimensionEvidence P) :
    HausdorffDimensionClosed P := by
  exact And.intro E.dimensionDefinitionClosed E.dimensionPropertiesClosed

end DimensionTheorySmoothDynamicalSystemsLemma
end HautevilleHouse
