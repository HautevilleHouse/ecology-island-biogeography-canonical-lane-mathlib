import HautevilleHouse.EcologyIslandBiogeographyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

def ConstrainedBiogeographyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biogeography_endgame (A : AdmissibleClass) : ConstrainedBiogeographyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse
