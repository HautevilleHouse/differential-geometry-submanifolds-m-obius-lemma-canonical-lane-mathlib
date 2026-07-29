import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean.SubmanifoldStructure

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure ConnectionPackage {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (S : SubmanifoldPackage M) where
  leviCivitaConnection : Prop
  secondFundamentalForm : Prop
  shapeOperator : Prop
  connectionCompatibleMobius : Prop
  leviCivitaDefined : Prop
  secondFundamentalFormDefined : Prop
  shapeOperatorDefined : Prop
  leviCivitaDefinedClosed : leviCivitaDefined
  secondFundamentalFormDefinedClosed : secondFundamentalFormDefined
  shapeOperatorDefinedClosed : shapeOperatorDefined
  connectionCompatibleMobiusClosed : connectionCompatibleMobius

structure ConnectionEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    {S : SubmanifoldPackage M} (C : ConnectionPackage S) where
  leviCivitaDefinedClosed : C.leviCivitaDefined
  secondFundamentalFormDefinedClosed : C.secondFundamentalFormDefined
  shapeOperatorDefinedClosed : C.shapeOperatorDefined
  connectionCompatibleMobiusClosed : C.connectionCompatibleMobius

def ConnectionClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    {S : SubmanifoldPackage M} (C : ConnectionPackage S) : Prop :=
  C.leviCivitaDefined ∧ C.secondFundamentalFormDefined ∧
  C.shapeOperatorDefined ∧ C.connectionCompatibleMobius

theorem connection_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    {S : SubmanifoldPackage M} (C : ConnectionPackage S)
    (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.leviCivitaDefinedClosed
    (And.intro E.secondFundamentalFormDefinedClosed
      (And.intro E.shapeOperatorDefinedClosed E.connectionCompatibleMobiusClosed))

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse