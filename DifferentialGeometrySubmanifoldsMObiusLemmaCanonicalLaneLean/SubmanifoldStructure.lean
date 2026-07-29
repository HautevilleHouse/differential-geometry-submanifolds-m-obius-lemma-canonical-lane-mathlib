import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure SubmanifoldEmbedding where
  sourceManifold : Type u
  targetManifold : Type v
  embeddingMap : sourceManifold → targetManifold
  smoothEmbedding : Prop
  dimensionCompatibility : Prop
  secondFundamentalForm : Prop
  shapeOperator : Prop

structure SubmanifoldEvidence (S : SubmanifoldEmbedding) where
  smoothEmbeddingClosed : S.smoothEmbedding
  dimensionCompatibilityClosed : S.dimensionCompatibility
  secondFundamentalFormClosed : S.secondFundamentalForm
  shapeOperatorClosed : S.shapeOperator

def SubmanifoldStructureClosed (S : SubmanifoldEmbedding) : Prop :=
  S.smoothEmbedding ∧ S.dimensionCompatibility ∧ S.secondFundamentalForm ∧ S.shapeOperator

theorem submanifold_structure_closed_from_evidence (S : SubmanifoldEmbedding) (E : SubmanifoldEvidence S) :
    SubmanifoldStructureClosed S := by
  exact And.intro E.smoothEmbeddingClosed
    (And.intro E.dimensionCompatibilityClosed
      (And.intro E.secondFundamentalFormClosed E.shapeOperatorClosed))

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse