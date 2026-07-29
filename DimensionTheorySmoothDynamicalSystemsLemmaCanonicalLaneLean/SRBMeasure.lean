import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure SRBMeasurePackage {L : LyapunovExponentPackage}
    {S : StableUnstableManifoldPackage L} (P : PesinEntropyPackage S) where
  srbMeasure : Type u
  absolutelyContinuousOnUnstable : Prop
  equilibriumState : Prop
  youngTheorem : Prop

structure SRBMeasureEvidence {L : LyapunovExponentPackage}
    {S : StableUnstableManifoldPackage L} {P : PesinEntropyPackage S}
    (R : SRBMeasurePackage P) where
  absolutelyContinuousOnUnstableClosed : R.absolutelyContinuousOnUnstable
  equilibriumStateClosed : R.equilibriumState
  youngTheoremClosed : R.youngTheorem

def SRBMeasureClosed {L : LyapunovExponentPackage}
    {S : StableUnstableManifoldPackage L} {P : PesinEntropyPackage S}
    (R : SRBMeasurePackage P) : Prop :=
  R.absolutelyContinuousOnUnstable ∧ R.youngTheorem

theorem srb_measure_closed_from_evidence {L : LyapunovExponentPackage}
    {S : StableUnstableManifoldPackage L} {P : PesinEntropyPackage S}
    (R : SRBMeasurePackage P) (E : SRBMeasureEvidence R) : SRBMeasureClosed R := by
  exact And.intro E.absolutelyContinuousOnUnstableClosed E.youngTheoremClosed

end HautevilleHouse.DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean