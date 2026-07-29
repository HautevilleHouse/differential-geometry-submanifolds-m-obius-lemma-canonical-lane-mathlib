import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure SubmanifoldEmbeddingPackage where
  ambientManifold : Type u
  ambientTopology : TopologicalSpace ambientManifold
  submanifold : Type v
  embedding : submanifold → ambientManifold
  immersionProperty : Prop
  topologicalEmbedding : Prop
  closedImage : Prop
  immersionPropertyTerm : immersionProperty
  topologicalEmbeddingTerm : topologicalEmbedding
  closedImageTerm : closedImage

structure SubmanifoldEmbeddingEvidence (S : SubmanifoldEmbeddingPackage) where
  immersionPropertyClosed : S.immersionProperty
  topologicalEmbeddingClosed : S.topologicalEmbedding
  closedImageClosed : S.closedImage

def SubmanifoldEmbeddingClosed (S : SubmanifoldEmbeddingPackage) : Prop :=
  S.immersionProperty ∧ S.topologicalEmbedding ∧ S.closedImage

theorem submanifold_embedding_closed_from_evidence (S : SubmanifoldEmbeddingPackage)
    (E : SubmanifoldEmbeddingEvidence S) : SubmanifoldEmbeddingClosed S := by
  exact And.intro E.immersionPropertyClosed (And.intro E.topologicalEmbeddingClosed E.closedImageClosed)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse