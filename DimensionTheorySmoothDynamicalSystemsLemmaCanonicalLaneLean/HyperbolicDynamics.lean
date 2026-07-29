import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure HyperbolicDynamicsPackage where
  hyperbolicityOnInvariantSet : Prop
  stableUnstableSplitting : Prop
  symbolicDynamics : Prop
  markovPartition : Prop

structure HyperbolicDynamicsEvidence (H : HyperbolicDynamicsPackage) where
  hyperbolicityOnInvariantSetClosed : H.hyperbolicityOnInvariantSet
  stableUnstableSplittingClosed : H.stableUnstableSplitting
  symbolicDynamicsClosed : H.symbolicDynamics
  markovPartitionClosed : H.markovPartition

def HyperbolicDynamicsClosed (H : HyperbolicDynamicsPackage) : Prop :=
  H.hyperbolicityOnInvariantSet ∧ H.stableUnstableSplitting ∧ H.symbolicDynamics ∧ H.markovPartition

theorem hyperbolic_dynamics_closed_from_evidence (H : HyperbolicDynamicsPackage) (E : HyperbolicDynamicsEvidence H) :
    HyperbolicDynamicsClosed H := by
  exact And.intro E.hyperbolicityOnInvariantSetClosed
    (And.intro E.stableUnstableSplittingClosed
      (And.intro E.symbolicDynamicsClosed E.markovPartitionClosed))

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse
