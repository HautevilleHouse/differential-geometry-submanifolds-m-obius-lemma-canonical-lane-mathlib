import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure MObiusLemmaStatementPackage where
  submanifold : Type u
  embeddingIntoR3 : submanifold → EuclideanSpace ℝ (Fin 3)
  nonOrientable : Prop
  mobiusStripCondition : Prop
  statementConclusion : Prop
  nonOrientableTerm : nonOrientable
  mobiusStripConditionTerm : mobiusStripCondition
  statementConclusionTerm : statementConclusion

structure MObiusLemmaStatementEvidence (M : MObiusLemmaStatementPackage) where
  nonOrientableClosed : M.nonOrientable
  mobiusStripConditionClosed : M.mobiusStripCondition
  statementConclusionClosed : M.statementConclusion

def MObiusLemmaStatementClosed (M : MObiusLemmaStatementPackage) : Prop :=
  M.nonOrientable ∧ M.mobiusStripCondition ∧ M.statementConclusion

theorem mobius_lemma_statement_closed_from_evidence (M : MObiusLemmaStatementPackage)
    (E : MObiusLemmaStatementEvidence M) : MObiusLemmaStatementClosed M := by
  exact And.intro E.nonOrientableClosed (And.intro E.mobiusStripConditionClosed E.statementConclusionClosed)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse