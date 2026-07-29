import DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def dimensionProjection : Projection (AdmissibleClass) := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dimension_projection_idempotent (x : AdmissibleClass) :
    dimensionProjection.toFun (dimensionProjection.toFun x) = dimensionProjection.toFun x := by
  exact dimensionProjection.idempotent x

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse