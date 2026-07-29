import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Type
  dimension : ℕ

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  dynamicalStructure : Prop
  invariantMeasure : Type
  entropy : ℝ
  conclusion : entropy > 0

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.conclusion

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse