import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean.SubmanifoldStructure

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure HolonomyPackage {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (S : SubmanifoldPackage M) where
  holonomyGroup : Type v
  reductionProperty : Prop
  mobiusAction : Prop
  groupDefined : Prop
  groupDefinedClosed : groupDefined
  reductionPropertyClosed : reductionProperty
  mobiusActionClosed : mobiusAction

structure HolonomyEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    {S : SubmanifoldPackage M} (H : HolonomyPackage S) where
  groupDefinedClosed : H.groupDefined
  reductionPropertyClosed : H.reductionProperty
  mobiusActionClosed : H.mobiusAction

def HolonomyClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    {S : SubmanifoldPackage M} (H : HolonomyPackage S) : Prop :=
  H.groupDefined ∧ H.reductionProperty ∧ H.mobiusAction

theorem holonomy_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    {S : SubmanifoldPackage M} (H : HolonomyPackage S)
    (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.groupDefinedClosed
    (And.intro E.reductionPropertyClosed E.mobiusActionClosed)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse