import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure LyapunovExponentPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  dynamicalSystem : manifold → manifold
  invariantMeasure : Type v
  lyapunovExponents : List ℝ
  osedelecTheorem : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  smoothStructureClosed : L.smoothStructure
  invariantMeasureClosed : True
  osedelecTheoremClosed : L.osedelecTheorem

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.smoothStructure ∧ L.osedelecTheorem

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage)
    (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.smoothStructureClosed E.osedelecTheoremClosed

end HautevilleHouse.DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean