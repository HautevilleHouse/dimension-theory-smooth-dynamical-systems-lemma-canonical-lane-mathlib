import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean

structure PesinTheoryPackage where
  system : DynamicalSystemPackage
  nonuniformHyperbolicity : Prop
  invariantMeasures : Set (Measure system.manifold)
  entropyFormula : Prop
  nonuniformHyperbolicityClosed : nonuniformHyperbolicity
  entropyFormulaClosed : entropyFormula

def PesinTheoryClosed (P : PesinTheoryPackage) : Prop :=
  P.nonuniformHyperbolicity ∧ P.entropyFormula

theorem pesin_theory_closed_from_evidence (P : PesinTheoryPackage) (E : PesinTheoryEvidence P) : PesinTheoryClosed P := by
  exact And.intro E.nonuniformHyperbolicityClosed E.entropyFormulaClosed

end DimensionTheorySmoothDynamicalSystemsLemmaCanonicalLaneLean
end HautevilleHouse