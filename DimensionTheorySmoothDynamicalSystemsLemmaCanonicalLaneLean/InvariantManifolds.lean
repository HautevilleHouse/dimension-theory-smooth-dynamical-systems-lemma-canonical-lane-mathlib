import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure InvariantManifoldsPackage where
  stableManifoldExists : Prop
  unstableManifoldExists : Prop
  centerManifoldExists : Prop
  invariantFoliations : Prop

structure InvariantManifoldsEvidence (I : InvariantManifoldsPackage) where
  stableManifoldExistsClosed : I.stableManifoldExists
  unstableManifoldExistsClosed : I.unstableManifoldExists
  centerManifoldExistsClosed : I.centerManifoldExists
  invariantFoliationsClosed : I.invariantFoliations

def InvariantManifoldsClosed (I : InvariantManifoldsPackage) : Prop :=
  I.stableManifoldExists ∧ I.unstableManifoldExists ∧ I.centerManifoldExists ∧ I.invariantFoliations

theorem invariant_manifolds_closed_from_evidence (I : InvariantManifoldsPackage) (E : InvariantManifoldsEvidence I) :
    InvariantManifoldsClosed I := by
  exact And.intro E.stableManifoldExistsClosed
    (And.intro E.unstableManifoldExistsClosed
      (And.intro E.centerManifoldExistsClosed E.invariantFoliationsClosed))

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse
