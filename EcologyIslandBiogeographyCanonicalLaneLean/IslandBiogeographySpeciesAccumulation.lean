import EcologyIslandBiogeographyCanonicalLaneLean.IslandBiogeographyEquilibriumModel

/-!
# Species Accumulation Package
-/

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure SpeciesAccumulationPackage {A : AdmissibleClass} (M : EquilibriumModelPackage A) where
  immigrationColonization : Prop
  extinctionTurnover : Prop
  speciesTimeRelationship : Prop
  accumulationCurve : Prop

structure SpeciesAccumulationEvidence {A : AdmissibleClass} {M : EquilibriumModelPackage A}
    (S : SpeciesAccumulationPackage M) where
  immigrationColonizationClosed : S.immigrationColonization
  extinctionTurnoverClosed : S.extinctionTurnover
  speciesTimeRelationshipClosed : S.speciesTimeRelationship
  accumulationCurveClosed : S.accumulationCurve

def SpeciesAccumulationClosed {A : AdmissibleClass} {M : EquilibriumModelPackage A}
    (S : SpeciesAccumulationPackage M) : Prop :=
  S.immigrationColonization ∧ S.extinctionTurnover ∧ S.speciesTimeRelationship ∧ S.accumulationCurve

theorem species_accumulation_closed_from_evidence {A : AdmissibleClass} {M : EquilibriumModelPackage A}
    (S : SpeciesAccumulationPackage M) (E : SpeciesAccumulationEvidence S) :
    SpeciesAccumulationClosed S := by
  exact And.intro E.immigrationColonizationClosed
    (And.intro E.extinctionTurnoverClosed
      (And.intro E.speciesTimeRelationshipClosed E.accumulationCurveClosed))

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse