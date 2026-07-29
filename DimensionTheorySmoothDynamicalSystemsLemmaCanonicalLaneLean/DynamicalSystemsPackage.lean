import DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure DynamicalSystemsPackage (A : AdmissibleClass) where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  flow : ℝ → manifold → manifold
  invariantMeasure : Prop
  entropyDefined : Prop
  dimensionDefined : Prop
  lyapunovExponentsDefined : Prop
  flowSmooth : Prop
  invariantMeasureExists : invariantMeasure
  entropyComputed : entropyDefined
  dimensionComputed : dimensionDefined
  lyapunovExponentsComputed : lyapunovExponentsDefined

structure DynamicalSystemsEvidence (A : AdmissibleClass) (D : DynamicalSystemsPackage A) where
  flowSmoothClosed : D.flowSmooth
  invariantMeasureClosed : D.invariantMeasure
  entropyClosed : D.entropyDefined
  dimensionClosed : D.dimensionDefined
  lyapunovExponentsClosed : D.lyapunovExponentsDefined

def DynamicalSystemsClosed (A : AdmissibleClass) (D : DynamicalSystemsPackage A) : Prop :=
  D.flowSmooth ∧ D.invariantMeasure ∧ D.entropyDefined ∧ D.dimensionDefined ∧ D.lyapunovExponentsDefined

theorem dynamical_systems_closed_from_evidence
    (A : AdmissibleClass) (D : DynamicalSystemsPackage A)
    (E : DynamicalSystemsEvidence A D) : DynamicalSystemsClosed A D := by
  exact And.intro E.flowSmoothClosed
    (And.intro E.invariantMeasureClosed
      (And.intro E.entropyClosed
        (And.intro E.dimensionClosed E.lyapunovExponentsClosed)))

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse