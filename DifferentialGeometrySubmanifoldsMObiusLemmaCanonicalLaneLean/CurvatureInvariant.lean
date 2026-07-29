import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean.SubmanifoldStructure

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure CurvatureInvariantPackage {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (S : SubmanifoldPackage M) where
  gaussianCurvature : S.embeddedSubmanifold → ℝ
  meanCurvature : S.embeddedSubmanifold → ℝ
  curvatureInvariantUnderMobius : Prop
  gaussianDefined : Prop
  meanDefined : Prop
  gaussianDefinedClosed : gaussianDefined
  meanDefinedClosed : meanDefined
  curvatureInvariantUnderMobiusClosed : curvatureInvariantUnderMobius

structure CurvatureInvariantEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    {S : SubmanifoldPackage M} (C : CurvatureInvariantPackage S) where
  gaussianDefinedClosed : C.gaussianDefined
  meanDefinedClosed : C.meanDefined
  curvatureInvariantUnderMobiusClosed : C.curvatureInvariantUnderMobius

def CurvatureInvariantClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    {S : SubmanifoldPackage M} (C : CurvatureInvariantPackage S) : Prop :=
  C.gaussianDefined ∧ C.meanDefined ∧ C.curvatureInvariantUnderMobius

theorem curvature_invariant_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    {S : SubmanifoldPackage M} (C : CurvatureInvariantPackage S)
    (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.gaussianDefinedClosed
    (And.intro E.meanDefinedClosed E.curvatureInvariantUnderMobiusClosed)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse