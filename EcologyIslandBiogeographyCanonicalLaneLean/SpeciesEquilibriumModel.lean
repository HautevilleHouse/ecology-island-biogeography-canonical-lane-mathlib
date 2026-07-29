import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure EquilibriumPackage where
  islandArea : ℝ
  distanceToMainland : ℝ
  immigrationRate : ℝ
  extinctionRate : ℝ
  equilibriumSpeciesRichness : ℝ

structure EquilibriumEvidence (E : EquilibriumPackage) where
  areaEffectClosed : E.islandArea > 0
  distanceEffectClosed : E.distanceToMainland > 0
  immigrationExtinctionBalanceClosed : E.immigrationRate = E.extinctionRate
  richnessPositiveClosed : E.equilibriumSpeciesRichness > 0

def EquilibriumClosed (E : EquilibriumPackage) : Prop :=
  E.islandArea > 0 ∧ E.distanceToMainland > 0 ∧
  E.immigrationRate = E.extinctionRate ∧
  E.equilibriumSpeciesRichness > 0

theorem equilibrium_closed_from_evidence (E : EquilibriumPackage)
    (ev : EquilibriumEvidence E) : EquilibriumClosed E := by
  exact And.intro ev.areaEffectClosed
    (And.intro ev.distanceEffectClosed
      (And.intro ev.immigrationExtinctionBalanceClosed ev.richnessPositiveClosed))

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse