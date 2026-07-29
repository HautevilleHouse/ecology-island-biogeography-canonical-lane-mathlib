import canonicalLaneMathlib.AdmissibleClass

/-!
# Island Biogeography Package - Core Structures
-/

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure IslandArea where
  value : ℝ
  unit : String
  positive : value > 0

structure SpeciesRichness where
  count : ℕ
  finite : True

structure DistanceToMainland where
  value : ℝ
  unit : String
  nonnegative : value ≥ 0

structure IslandBiogeographyPackage where
  area : IslandArea
  distance : DistanceToMainland
  speciesRichness : SpeciesRichness
  immigrationRateModel : Prop
  extinctionRateModel : Prop
  empiricalSupport : Prop

structure BiogeographyAdmittedObject where
  island : IslandArea
  distance : DistanceToMainland
  species : SpeciesRichness
  equilibriumReached : Prop
  conclusion : equilibriumReached

def BiogeographyEquilibriumClosed (O : BiogeographyAdmittedObject) : Prop :=
  O.equilibriumReached

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse
