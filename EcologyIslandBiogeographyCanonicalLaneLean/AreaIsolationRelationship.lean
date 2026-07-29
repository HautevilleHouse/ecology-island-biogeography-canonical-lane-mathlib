import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure AreaIsolationPackage (A : AdmissibleClass) where
  areaSpeciesRelation : Prop
  isolationEffect : Prop
  speciesAreaExponent : Float
  distanceDecayConstant : Float
  relationClosed : areaSpeciesRelation ∧ isolationEffect

structure AreaIsolationEvidence {A : AdmissibleClass} (R : AreaIsolationPackage A) where
  areaSpeciesRelationClosed : R.areaSpeciesRelation
  isolationEffectClosed : R.isolationEffect
  relationClosedClosed : R.relationClosed

def AreaIsolationClosed {A : AdmissibleClass} (R : AreaIsolationPackage A) : Prop :=
  R.areaSpeciesRelation ∧ R.isolationEffect

theorem area_isolation_closed_from_evidence {A : AdmissibleClass} (R : AreaIsolationPackage A) (E : AreaIsolationEvidence R) : AreaIsolationClosed R :=
  And.intro E.areaSpeciesRelationClosed E.isolationEffectClosed

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse