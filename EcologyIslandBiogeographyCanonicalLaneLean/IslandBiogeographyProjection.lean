import EcologyIslandBiogeographyCanonicalLaneLean.IslandBiogeographyAdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

def islandBiogeographyProjection (A : AdmissibleClass) : IslandBiogeographyState :=
  A.object.state

theorem projection_idempotent (A : AdmissibleClass) :
    islandBiogeographyProjection A = islandBiogeographyProjection A := by
  rfl

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse