import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Geometry.Manifold.Instances.Sphere

/-!
# Curvature Invariants Package
-/

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure CurvatureInvariantsPackage where
  gaussianCurvature : Type u
  meanCurvature : Type v
  shapeOperator : Type w
  gaussEquation : Prop
  codazziEquation : Prop
  ricciIdentity : Prop

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.gaussEquation ∧ C.codazziEquation ∧ C.ricciIdentity

theorem curvature_invariants_closed (C : CurvatureInvariantsPackage) :
    CurvatureInvariantsClosed C := by
  exact And.intro C.gaussEquation (And.intro C.codazziEquation C.ricciIdentity)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse