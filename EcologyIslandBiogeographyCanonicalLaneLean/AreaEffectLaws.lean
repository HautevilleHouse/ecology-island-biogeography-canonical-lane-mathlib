import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure AreaEffectPackage where
  speciesAreaExponent : ℝ
  areaEffectMagnitude : ℝ
  areaScalingExponent : ℝ

structure AreaEffectEvidence (A : AreaEffectPackage) where
  exponentPositiveClosed : A.speciesAreaExponent > 0
  magnitudePositiveClosed : A.areaEffectMagnitude > 0
  scalingExponentClosed : A.areaScalingExponent = A.speciesAreaExponent

def AreaEffectClosed (A : AreaEffectPackage) : Prop :=
  A.speciesAreaExponent > 0 ∧ A.areaEffectMagnitude > 0 ∧
  A.areaScalingExponent = A.speciesAreaExponent

theorem area_effect_closed_from_evidence (A : AreaEffectPackage)
    (ev : AreaEffectEvidence A) : AreaEffectClosed A := by
  exact And.intro ev.exponentPositiveClosed
    (And.intro ev.magnitudePositiveClosed ev.scalingExponentClosed)

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse