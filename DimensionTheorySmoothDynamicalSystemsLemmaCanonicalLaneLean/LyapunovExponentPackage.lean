import DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean.DynamicalAdmittedObject

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure LyapunovExponentPackage (M : DynamicalAdmittedObject) where
  cocycle : Type
  exponentialGrowth : Prop
  osedeletsTheorem : Prop
  uniformHyperbolicity : Prop

def LyapunovExponentClosed (M : DynamicalAdmittedObject) (L : LyapunovExponentPackage M) : Prop :=
  L.exponentialGrowth ∧ L.osedeletsTheorem ∧ L.uniformHyperbolicity

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse