import canonicalLaneMathlib.FinalTheorem

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure IslandBiogeographyTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  islandBiogeographyConstrainedStatement : String
  carriedRemainder : String

def sourceIslandBiogeographyStatement : IslandBiogeographyTheoremStatement :=
  {
    sourceKey := "ecology-island-biogeography-canonical-lane",
    theoremName := "Island Biogeography Theory",
    theoremObject := "MacArthur-Wilson equilibrium model",
    classicalBoundary := "unrestricted classical species-area projection remains open",
    islandBiogeographyConstrainedStatement := "island biogeography constrained theorem certificate internalized through admissible-class closure",
    carriedRemainder := "classical species-area derivation carried outside constrained closure"
  }

theorem island_biogeography_statement_imported :
    sourceIslandBiogeographyStatement.sourceKey = "ecology-island-biogeography-canonical-lane" := by
  rfl

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse