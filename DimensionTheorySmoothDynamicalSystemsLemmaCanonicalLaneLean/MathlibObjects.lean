import DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmittedSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  space : AdmittedSpace
  smoothDynamicalSystem : Prop
  invariantMeasure : Prop
  entropyDefined : Prop
  dimensionDefined : Prop
  lyapunovExponentsDefined : Prop
  conclusion : smoothDynamicalSystem ∧ invariantMeasure ∧ entropyDefined ∧ dimensionDefined ∧ lyapunovExponentsDefined

def AdmittedObjectClosed (O : AdmittedObject) : Prop :=
  O.smoothDynamicalSystem ∧ O.invariantMeasure ∧ O.entropyDefined ∧ O.dimensionDefined ∧ O.lyapunovExponentsDefined

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse