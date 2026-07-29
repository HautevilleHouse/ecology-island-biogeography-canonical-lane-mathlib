import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure SpeciesRichnessPackage (A : AdmissibleClass) where
  equilibriumRichness : Prop
  areaEffect : Prop
  distanceEffect : Prop
  dynamicBalance : Prop

structure SpeciesRichnessEvidence {A : AdmissibleClass} (S : SpeciesRichnessPackage A) where
  equilibriumRichnessClosed : S.equilibriumRichness
  areaEffectClosed : S.areaEffect
  distanceEffectClosed : S.distanceEffect
  dynamicBalanceClosed : S.dynamicBalance

def SpeciesRichnessClosed {A : AdmissibleClass} (S : SpeciesRichnessPackage A) : Prop :=
  S.equilibriumRichness ∧ S.areaEffect ∧ S.distanceEffect ∧ S.dynamicBalance

theorem species_richness_closed_from_evidence {A : AdmissibleClass} (S : SpeciesRichnessPackage A) (E : SpeciesRichnessEvidence S) : SpeciesRichnessClosed S :=
  And.intro E.equilibriumRichnessClosed (And.intro E.areaEffectClosed (And.intro E.distanceEffectClosed E.dynamicBalanceClosed))

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse