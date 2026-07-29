import HautevilleHouse.EcologyIslandBiogeographyCanonicalLaneLean.BiogeographyAdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusions

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusions

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse
