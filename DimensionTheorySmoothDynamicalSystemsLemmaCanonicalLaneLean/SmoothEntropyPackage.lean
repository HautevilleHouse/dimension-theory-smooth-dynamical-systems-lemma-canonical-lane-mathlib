import DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean.DynamicalAdmittedObject

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure SmoothEntropyPackage (M : DynamicalAdmittedObject) where
  entropyFunctional : Type
  variationalPrinciple : Prop
  expansiveness : Prop
  specification : Prop

def SmoothEntropyClosed (M : DynamicalAdmittedObject) (E : SmoothEntropyPackage M) : Prop :=
  E.variationalPrinciple ∧ E.expansiveness ∧ E.specification

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse