import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic
import Mathlib.MeasureTheory.Measure.MeasureSpace

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure IslandHabitat where
  name : String
  area : ℝ
  distanceToMainland : ℝ

structure Species where
  speciesName : String
  extinctionProbability : ℝ
  colonizationRate : ℝ

structure BiogeographyState where
  island : IslandHabitat
  speciesPool : List Species
  currentRichness : ℕ
  carryingCapacity : ℕ

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse