import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure LyapunovExponentsPackage where
  oseledetsTheorem : Prop
  lyapunovSpectrumDefined : Prop
  multiplicativeErgodicTheorem : Prop
  exponentialGrowthRates : Prop

structure LyapunovExponentsEvidence (L : LyapunovExponentsPackage) where
  oseledetsTheoremClosed : L.oseledetsTheorem
  lyapunovSpectrumDefinedClosed : L.lyapunovSpectrumDefined
  multiplicativeErgodicTheoremClosed : L.multiplicativeErgodicTheorem
  exponentialGrowthRatesClosed : L.exponentialGrowthRates

def LyapunovExponentsClosed (L : LyapunovExponentsPackage) : Prop :=
  L.oseledetsTheorem ∧ L.lyapunovSpectrumDefined ∧ L.multiplicativeErgodicTheorem ∧ L.exponentialGrowthRates

theorem lyapunov_exponents_closed_from_evidence (L : LyapunovExponentsPackage) (E : LyapunovExponentsEvidence L) :
    LyapunovExponentsClosed L := by
  exact And.intro E.oseledetsTheoremClosed
    (And.intro E.lyapunovSpectrumDefinedClosed
      (And.intro E.multiplicativeErgodicTheoremClosed E.exponentialGrowthRatesClosed))

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse
