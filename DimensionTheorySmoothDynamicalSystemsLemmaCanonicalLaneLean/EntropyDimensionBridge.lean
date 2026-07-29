import DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean.DynamicalSystemsPackage

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure EntropyDimensionBridge (A : AdmissibleClass) (D : DynamicalSystemsPackage A) where
  entropyBound : Prop
  dimensionBound : Prop
  inequalityPesinFormula : Prop
  inequalityYoungFormula : Prop
  bridgeClosed : Prop
  entropyBoundClosed : entropyBound
  dimensionBoundClosed : dimensionBound
  inequalityPesinClosed : inequalityPesinFormula
  inequalityYoungClosed : inequalityYoungFormula
  bridgeClosedTerm : bridgeClosed

def EntropyDimensionBridgeClosed (A : AdmissibleClass) (D : DynamicalSystemsPackage A)
    (B : EntropyDimensionBridge A D) : Prop :=
  B.entropyBound ∧ B.dimensionBound ∧ B.inequalityPesinFormula ∧
  B.inequalityYoungFormula ∧ B.bridgeClosed

theorem entropy_dimension_bridge_closed_from_evidence
    (A : AdmissibleClass) (D : DynamicalSystemsPackage A)
    (B : EntropyDimensionBridge A D) : EntropyDimensionBridgeClosed A D B := by
  exact And.intro B.entropyBoundClosed
    (And.intro B.dimensionBoundClosed
      (And.intro B.inequalityPesinClosed
        (And.intro B.inequalityYoungClosed B.bridgeClosedTerm)))

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse