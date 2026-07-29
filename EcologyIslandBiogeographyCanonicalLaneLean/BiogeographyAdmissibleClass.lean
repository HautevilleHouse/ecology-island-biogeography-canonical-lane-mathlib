import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure BiogeographyAdmittedObject where
  island : Type
  speciesList : List String
  area : Float
  distance : Float
  richness : Nat
  equilibriumRichness : Float
  speciesAreaCurveExponent : Float
  conclusions : Prop

structure AdmissibleClass where
  object : BiogeographyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusions ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse
