import EcologyIslandBiogeographyCanonicalLaneLean.IslandBiogeographyProjection

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  IslandBiogeographyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse