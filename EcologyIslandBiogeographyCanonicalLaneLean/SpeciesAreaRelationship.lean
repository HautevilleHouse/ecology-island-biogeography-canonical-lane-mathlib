import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure IslandBiogeographyAdmissibleObject where
  speciesRichness : Nat
  islandArea : Float
  distanceToMainland : Float
  immigrationRate : Float
  extinctionRate : Float
  equilibriumRichness : Float

structure SpeciesAreaPackage where
  islandArea : Float
  speciesRichness : Float
  zExponent : Float
  cConstant : Float
  powerLawFitted : Prop
  nestednessPattern : Prop

def speciesAreaModel (S : SpeciesAreaPackage) : Float :=
  S.cConstant * (S.islandArea ^ S.zExponent)

structure SpeciesAreaEvidence (S : SpeciesAreaPackage) where
  powerLawFittedClosed : S.powerLawFitted
  nestednessPatternClosed : S.nestednessPattern

def SpeciesAreaClosed (S : SpeciesAreaPackage) : Prop :=
  S.powerLawFitted ∧ S.nestednessPattern

theorem species_area_closed_from_evidence (S : SpeciesAreaPackage) (E : SpeciesAreaEvidence S) : SpeciesAreaClosed S := by
  exact And.intro E.powerLawFittedClosed E.nestednessPatternClosed

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse
