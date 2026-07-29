import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyIslandBiogeographyCanonicalLaneLean

structure NestednessPackage where
  incidenceMatrix : Matrix ℕ ℕ Bool
  nestednessMetric : ℝ
  nestednessThreshold : ℝ

structure NestednessEvidence (N : NestednessPackage) where
  matrixNonemptyClosed : N.incidenceMatrix.rows > 0 ∧ N.incidenceMatrix.cols > 0
  metricAboveThresholdClosed : N.nestednessMetric ≥ N.nestednessThreshold
  thresholdPositiveClosed : N.nestednessThreshold > 0

def NestednessClosed (N : NestednessPackage) : Prop :=
  (N.incidenceMatrix.rows > 0 ∧ N.incidenceMatrix.cols > 0) ∧
  N.nestednessMetric ≥ N.nestednessThreshold ∧
  N.nestednessThreshold > 0

theorem nestedness_closed_from_evidence (N : NestednessPackage)
    (ev : NestednessEvidence N) : NestednessClosed N := by
  exact And.intro ev.matrixNonemptyClosed
    (And.intro ev.metricAboveThresholdClosed ev.thresholdPositiveClosed)

end EcologyIslandBiogeographyCanonicalLaneLean
end HautevilleHouse