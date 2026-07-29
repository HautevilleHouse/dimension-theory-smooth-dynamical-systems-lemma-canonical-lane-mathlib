import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemma

structure DimensionOfAttractorsPackage (M : Type u) [TopologicalSpace M] [MetricSpace M] [CompactSpace M] where
  dynamicalSystem : M → M
  attractorSet : Set M
  hausdorffDimension : ℝ
  boxCountingDimension : ℝ
  dimensionEquality : Prop
  dimensionUpperBound : Prop

structure DimensionOfAttractorsEvidence {M : Type u} [TopologicalSpace M] [MetricSpace M] [CompactSpace M]
    (P : DimensionOfAttractorsPackage M) where
  dimensionEqualityClosed : P.dimensionEquality
  dimensionUpperBoundClosed : P.dimensionUpperBound

def DimensionOfAttractorsClosed {M : Type u} [TopologicalSpace M] [MetricSpace M] [CompactSpace M]
    (P : DimensionOfAttractorsPackage M) : Prop :=
  P.dimensionEquality ∧ P.dimensionUpperBound

theorem dimension_of_attractors_closed_from_evidence {M : Type u} [TopologicalSpace M] [MetricSpace M] [CompactSpace M]
    (P : DimensionOfAttractorsPackage M) (E : DimensionOfAttractorsEvidence P) :
    DimensionOfAttractorsClosed P := by
  exact And.intro E.dimensionEqualityClosed E.dimensionUpperBoundClosed

end DimensionTheorySmoothDynamicalSystemsLemma
end HautevilleHouse
