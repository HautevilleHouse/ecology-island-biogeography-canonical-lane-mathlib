import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure IslandBiogeographyObject where
  islandName : String
  speciesRichness : Nat
  area : Float
  distanceFromMainland : Float
  extinctionRate : Float
  immigrationRate : Float

structure IslandBiogeographyAdmittedObject where
  object : IslandBiogeographyObject
  equilibriumRichness : Prop
  turnoverPrediction : Prop
  conclusion : equilibriumRichness ∧ turnoverPrediction

structure AdmissibleClass where
  admitted : IslandBiogeographyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  IslandBiogeographyWitnessClosed A.admitted ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse