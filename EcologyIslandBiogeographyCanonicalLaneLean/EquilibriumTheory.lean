import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyIslandBiogeographyCanonicalLaneLean.SpeciesAreaRelationship

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure EquilibriumTheoryPackage {S : SpeciesAreaPackage} where
  immigrationExtinctionBalance : Prop
  turnoverRate : Float
  dynamicEquilibrium : Prop
  disturbanceRecovery : Prop

structure EquilibriumTheoryEvidence {S : SpeciesAreaPackage} (E : EquilibriumTheoryPackage S) where
  immigrationExtinctionBalanceClosed : E.immigrationExtinctionBalance
  dynamicEquilibriumClosed : E.dynamicEquilibrium
  disturbanceRecoveryClosed : E.disturbanceRecovery

def EquilibriumTheoryClosed {S : SpeciesAreaPackage} (E : EquilibriumTheoryPackage S) : Prop :=
  E.immigrationExtinctionBalance ∧ E.dynamicEquilibrium ∧ E.disturbanceRecovery

theorem equilibrium_theory_closed_from_evidence {S : SpeciesAreaPackage} (E : EquilibriumTheoryPackage S) (Ev : EquilibriumTheoryEvidence E) : EquilibriumTheoryClosed E := by
  exact And.intro Ev.immigrationExtinctionBalanceClosed (And.intro Ev.dynamicEquilibriumClosed Ev.disturbanceRecoveryClosed)

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse
