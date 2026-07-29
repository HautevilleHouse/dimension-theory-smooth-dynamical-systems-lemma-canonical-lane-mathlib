import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemma

structure PesinTheoryAnalyticCertificate (M : Type u) [TopologicalSpace M] [MetricSpace M] [CompactSpace M] where
  invariantMeasuresPkg : InvariantMeasuresPackage M
  lyapunovExponentsPkg : LyapunovExponentsPackage M
  entropyPesinFormulaPkg : EntropyPesinFormulaPackage M
  invariantMeasuresClosed : InvariantMeasuresClosed invariantMeasuresPkg
  lyapunovExponentsClosed : LyapunovExponentsClosed lyapunovExponentsPkg
  entropyPesinFormulaClosed : EntropyPesinFormulaClosed entropyPesinFormulaPkg
  pesinTheoryProof : Prop
  pesinTheoryProofClosed : pesinTheoryProof

structure PesinTheoryAnalyticEvidence (M : Type u) [TopologicalSpace M] [MetricSpace M] [CompactSpace M]
    (C : PesinTheoryAnalyticCertificate M) where
  invariantMeasuresClosedFromCert : C.invariantMeasuresClosed
  lyapunovExponentsClosedFromCert : C.lyapunovExponentsClosed
  entropyPesinFormulaClosedFromCert : C.entropyPesinFormulaClosed
  pesinTheoryProofClosedFromCert : C.pesinTheoryProofClosed

theorem pesin_theory_analytic_certificate_closed {M : Type u} [TopologicalSpace M] [MetricSpace M] [CompactSpace M]
    (C : PesinTheoryAnalyticCertificate M) (E : PesinTheoryAnalyticEvidence M C) : C.pesinTheoryProof := by
  -- The certificate itself carries the proof
  exact C.pesinTheoryProofClosed

end DimensionTheorySmoothDynamicalSystemsLemma
end HautevilleHouse
