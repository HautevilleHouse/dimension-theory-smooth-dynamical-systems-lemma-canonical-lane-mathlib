import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure StableUnstableManifoldPackage (L : LyapunovExponentPackage) where
  hyperbolicSet : Set L.manifold
  stableManifold : L.manifold → Set L.manifold
  unstableManifold : L.manifold → Set L.manifold
  hadamardPerronTheorem : Prop
  inclinationLemma : Prop

structure StableUnstableManifoldEvidence {L : LyapunovExponentPackage}
    (S : StableUnstableManifoldPackage L) where
  hyperbolicSetClosed : S.hyperbolicSet ≠ ∅
  hadamardPerronTheoremClosed : S.hadamardPerronTheorem
  inclinationLemmaClosed : S.inclinationLemma

def StableUnstableManifoldClosed {L : LyapunovExponentPackage}
    (S : StableUnstableManifoldPackage L) : Prop :=
  S.hadamardPerronTheorem ∧ S.inclinationLemma

theorem stable_unstable_manifold_closed_from_evidence
    {L : LyapunovExponentPackage} (S : StableUnstableManifoldPackage L)
    (E : StableUnstableManifoldEvidence S) : StableUnstableManifoldClosed S := by
  exact And.intro E.hadamardPerronTheoremClosed E.inclinationLemmaClosed

end HautevilleHouse.DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean