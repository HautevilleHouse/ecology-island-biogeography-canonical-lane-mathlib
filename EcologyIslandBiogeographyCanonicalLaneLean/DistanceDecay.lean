import canonicalLaneMathlib.AdmissibleClass
import EcologyIslandBiogeographyCanonicalLaneLean.EcologyIslandBiogeography

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure DistanceDecayModel where
  colonisationRate : ℝ
  meanDispersalDistance : ℝ
  immigrationFunction (distance : ℝ) : ℝ :=
    colonisationRate * Real.exp (-distance / meanDispersalDistance)

structure DistanceDecayEvidence (D : DistanceDecayModel) where
  colonisationRatePositive : D.colonisationRate > 0
  meanDispersalDistancePositive : D.meanDispersalDistance > 0
  immigrationDecreases : ∀ (d1 d2 : ℝ), d1 < d2 → D.immigrationFunction d1 > D.immigrationFunction d2

def DistanceDecayClosed (D : DistanceDecayModel) : Prop :=
  D.colonisationRate > 0 ∧ D.meanDispersalDistance > 0 ∧
  ∀ (d1 d2 : ℝ), d1 < d2 → D.immigrationFunction d1 > D.immigrationFunction d2

theorem distance_decay_closed_from_evidence (D : DistanceDecayModel) (E : DistanceDecayEvidence D) :
    DistanceDecayClosed D := by
  exact And.intro E.colonisationRatePositive
    (And.intro E.meanDispersalDistancePositive E.immigrationDecreases)

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse