import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure DynamicalSystemPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  map : manifold → manifold
  invariantSet : Set manifold
  differentiableMap : Prop
  invariantSetClosed : invariantSet

def DynamicalSystemClosed (D : DynamicalSystemPackage) : Prop :=
  D.differentiableMap ∧ D.invariantSetClosed

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse