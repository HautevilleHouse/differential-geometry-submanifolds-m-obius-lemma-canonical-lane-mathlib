import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Geometry.Manifold.Basic
import Mathlib.Geometry.Manifold.Submanifold

/-!
# Submanifold Prelim Package
-/

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure SubmanifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  submanifold : Submanifold manifold
  immersionProperty : Prop
  embeddingProperty : Prop
  dimensionCondition : Prop

def SubmanifoldClosed (S : SubmanifoldPackage) : Prop :=
  S.immersionProperty ∧ S.embeddingProperty ∧ S.dimensionCondition

theorem submanifold_closed (S : SubmanifoldPackage) : SubmanifoldClosed S := by
  exact And.intro S.immersionProperty (And.intro S.embeddingProperty S.dimensionCondition)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse