import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure TurnoverDynamicsPackage (A : AdmissibleClass) where
  extinctionRate : Prop
  immigrationRate : Prop
  turnoverRate : Prop
  equilibriumCondition : Prop

structure TurnoverDynamicsEvidence {A : AdmissibleClass} (T : TurnoverDynamicsPackage A) where
  extinctionRateClosed : T.extinctionRate
  immigrationRateClosed : T.immigrationRate
  turnoverRateClosed : T.turnoverRate
  equilibriumConditionClosed : T.equilibriumCondition

def TurnoverDynamicsClosed {A : AdmissibleClass} (T : TurnoverDynamicsPackage A) : Prop :=
  T.extinctionRate ∧ T.immigrationRate ∧ T.turnoverRate ∧ T.equilibriumCondition

theorem turnover_dynamics_closed_from_evidence {A : AdmissibleClass} (T : TurnoverDynamicsPackage A) (E : TurnoverDynamicsEvidence T) : TurnoverDynamicsClosed T :=
  And.intro E.extinctionRateClosed (And.intro E.immigrationRateClosed (And.intro E.turnoverRateClosed E.equilibriumConditionClosed))

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse