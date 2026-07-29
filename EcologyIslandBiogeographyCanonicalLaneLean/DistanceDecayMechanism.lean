import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure DistanceDecayPackage where
  colonizationRate : ℝ
  extinctionRate : ℝ
  distanceDecayConstant : ℝ

structure DistanceDecayEvidence (D : DistanceDecayPackage) where
  colonizationRatePositiveClosed : D.colonizationRate > 0
  extinctionRatePositiveClosed : D.extinctionRate > 0
  distanceDecayConstantClosed : D.distanceDecayConstant > 0

def DistanceDecayClosed (D : DistanceDecayPackage) : Prop :=
  D.colonizationRate > 0 ∧ D.extinctionRate > 0 ∧
  D.distanceDecayConstant > 0

theorem distance_decay_closed_from_evidence (D : DistanceDecayPackage)
    (ev : DistanceDecayEvidence D) : DistanceDecayClosed D := by
  exact And.intro ev.colonizationRatePositiveClosed
    (And.intro ev.extinctionRatePositiveClosed ev.distanceDecayConstantClosed)

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse