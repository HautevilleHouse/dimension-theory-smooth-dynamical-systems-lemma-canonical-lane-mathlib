import canonicalLaneMathlib.AdmissibleClass
import DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean.AdmissibleClass
import DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean.BridgeLemmas
import DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

def ConstrainedDimensionTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dimension_theory_endgame (A : AdmissibleClass) :
    ConstrainedDimensionTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse
