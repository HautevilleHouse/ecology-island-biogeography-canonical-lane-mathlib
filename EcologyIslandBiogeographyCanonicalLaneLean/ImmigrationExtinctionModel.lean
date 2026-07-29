import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure ImmigrationExtinctionModelPackage (A : AdmissibleClass) where
  immigrationFunction : Prop
  extinctionFunction : Prop
  equilibriumPoint : Prop
  modelWellposed : immigrationFunction ∧ extinctionFunction ∧ equilibriumPoint

structure ImmigrationExtinctionModelEvidence {A : AdmissibleClass} (M : ImmigrationExtinctionModelPackage A) where
  immigrationFunctionClosed : M.immigrationFunction
  extinctionFunctionClosed : M.extinctionFunction
  equilibriumPointClosed : M.equilibriumPoint
  modelWellposedClosed : M.modelWellposed

def ImmigrationExtinctionModelClosed {A : AdmissibleClass} (M : ImmigrationExtinctionModelPackage A) : Prop :=
  M.immigrationFunction ∧ M.extinctionFunction ∧ M.equilibriumPoint

theorem immigration_extinction_model_closed_from_evidence {A : AdmissibleClass} (M : ImmigrationExtinctionModelPackage A) (E : ImmigrationExtinctionModelEvidence M) : ImmigrationExtinctionModelClosed M :=
  And.intro E.immigrationFunctionClosed (And.intro E.extinctionFunctionClosed E.equilibriumPointClosed)

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse