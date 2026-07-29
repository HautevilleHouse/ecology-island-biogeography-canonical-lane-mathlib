import EcologyIslandBiogeographyCanonicalLaneLean.IslandBiogeographyGateLemmas

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

def ConstrainedIslandBiogeographyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_island_biogeography_endgame (A : AdmissibleClass) :
    ConstrainedIslandBiogeographyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse