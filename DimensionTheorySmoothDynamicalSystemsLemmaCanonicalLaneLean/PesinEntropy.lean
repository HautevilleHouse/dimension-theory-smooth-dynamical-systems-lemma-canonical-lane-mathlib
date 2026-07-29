import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure PesinEntropyPackage {L : LyapunovExponentPackage}
    (S : StableUnstableManifoldPackage L) where
  metricEntropy : ℝ
  lyapunovSum : ℝ
  pesinFormula : Prop

structure PesinEntropyEvidence {L : LyapunovExponentPackage}
    {S : StableUnstableManifoldPackage L} (P : PesinEntropyPackage S) where
  pesinFormulaClosed : P.pesinFormula

def PesinEntropyClosed {L : LyapunovExponentPackage}
    {S : StableUnstableManifoldPackage L} (P : PesinEntropyPackage S) : Prop :=
  P.pesinFormula

theorem pesin_entropy_closed_from_evidence {L : LyapunovExponentPackage}
    {S : StableUnstableManifoldPackage L} (P : PesinEntropyPackage S)
    (E : PesinEntropyEvidence P) : PesinEntropyClosed P := by
  exact E.pesinFormulaClosed

end HautevilleHouse.DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean