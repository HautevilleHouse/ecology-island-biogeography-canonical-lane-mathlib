import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure AdmissibleClass where
  object : BiogeographyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiogeographyEquilibriumClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse
