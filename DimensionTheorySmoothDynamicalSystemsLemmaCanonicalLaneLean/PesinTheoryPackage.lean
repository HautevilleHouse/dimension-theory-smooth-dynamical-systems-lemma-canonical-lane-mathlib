import DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean.DynamicalAdmittedObject
import DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean.LyapunovExponentPackage

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure PesinTheoryPackage (M : DynamicalAdmittedObject) (L : LyapunovExponentPackage M) where
  stableUnstableManifolds : Prop
  absoluteContinuity : Prop
  entropyFormula : Prop

def PesinTheoryClosed (M : DynamicalAdmittedObject) (L : LyapunovExponentPackage M) (P : PesinTheoryPackage M L) : Prop :=
  P.stableUnstableManifolds ∧ P.absoluteContinuity ∧ P.entropyFormula

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse