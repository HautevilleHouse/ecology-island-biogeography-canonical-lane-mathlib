import EcologyIslandBiogeographyCanonicalLaneLean.IslandBiogeographyAdmissibleClass

/-!
# Island Biogeography Equilibrium Model Package
-/

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure EquilibriumModelPackage (A : AdmissibleClass) where
  areaEffect : Prop
  distanceEffect : Prop
  speciesAreaRelationship : Prop
  equilibriumRichnessFormula : Prop

structure EquilibriumModelEvidence {A : AdmissibleClass} (M : EquilibriumModelPackage A) where
  areaEffectClosed : M.areaEffect
  distanceEffectClosed : M.distanceEffect
  speciesAreaRelationshipClosed : M.speciesAreaRelationship
  equilibriumRichnessFormulaClosed : M.equilibriumRichnessFormula

def EquilibriumModelClosed {A : AdmissibleClass} (M : EquilibriumModelPackage A) : Prop :=
  M.areaEffect ∧ M.distanceEffect ∧ M.speciesAreaRelationship ∧ M.equilibriumRichnessFormula

theorem equilibrium_model_closed_from_evidence {A : AdmissibleClass}
    (M : EquilibriumModelPackage A) (E : EquilibriumModelEvidence M) :
    EquilibriumModelClosed M := by
  exact And.intro E.areaEffectClosed
    (And.intro E.distanceEffectClosed
      (And.intro E.speciesAreaRelationshipClosed E.equilibriumRichnessFormulaClosed))

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse