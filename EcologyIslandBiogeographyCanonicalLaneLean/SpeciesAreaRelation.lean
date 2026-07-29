import canonicalLaneMathlib.AdmissibleClass
import EcologyIslandBiogeographyCanonicalLaneLean.EcologyIslandBiogeography

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure SpeciesAreaRelation where
  exponent : ℝ
  constantTerm : ℝ
  predictedRichness (area : ℝ) : ℝ :=
    constantTerm * area ^ exponent

structure SpeciesAreaEvidence (R : SpeciesAreaRelation) where
  exponentValid : R.exponent > 0 ∧ R.exponent < 1
  constantPositive : R.constantTerm > 0
  relationMonotonic : ∀ (a1 a2 : ℝ), a1 < a2 → R.predictedRichness a1 < R.predictedRichness a2

def SpeciesAreaClosed (R : SpeciesAreaRelation) : Prop :=
  R.exponent > 0 ∧ R.exponent < 1 ∧ R.constantTerm > 0 ∧
  ∀ (a1 a2 : ℝ), a1 < a2 → R.predictedRichness a1 < R.predictedRichness a2

theorem species_area_closed_from_evidence (R : SpeciesAreaRelation) (E : SpeciesAreaEvidence R) :
    SpeciesAreaClosed R := by
  have hExp : R.exponent > 0 ∧ R.exponent < 1 := E.exponentValid
  have hConst : R.constantTerm > 0 := E.constantPositive
  have hMon : ∀ (a1 a2 : ℝ), a1 < a2 → R.predictedRichness a1 < R.predictedRichness a2 :=
    E.relationMonotonic
  exact And.intro hExp.1 (And.intro hExp.2 (And.intro hConst hMon))

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse