import canonicalLaneMathlib.AdmissibleClass
import EcologyIslandBiogeographyCanonicalLaneLean.EcologyIslandBiogeography

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure TurnoverRateModel where
  colonizationEvents : ℕ
  extinctionEvents : ℕ
  timeInterval : ℝ
  turnoverRate : ℝ :=
    (colonizationEvents + extinctionEvents) / (2 * timeInterval)

structure TurnoverRateEvidence (T : TurnoverRateModel) where
  colonizationEventsNonneg : T.colonizationEvents ≥ 0
  extinctionEventsNonneg : T.extinctionEvents ≥ 0
  timePositive : T.timeInterval > 0
  turnoverPositive : T.turnoverRate > 0

def TurnoverClosed (T : TurnoverRateModel) : Prop :=
  T.colonizationEvents ≥ 0 ∧ T.extinctionEvents ≥ 0 ∧ T.timeInterval > 0 ∧ T.turnoverRate > 0

theorem turnover_closed_from_evidence (T : TurnoverRateModel) (E : TurnoverRateEvidence T) :
    TurnoverClosed T := by
  exact And.intro E.colonizationEventsNonneg
    (And.intro E.extinctionEventsNonneg (And.intro E.timePositive E.turnoverPositive))

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse