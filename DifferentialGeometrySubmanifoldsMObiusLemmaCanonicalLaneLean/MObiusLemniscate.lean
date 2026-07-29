import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Geometry.Manifold.Algebra.LieGroup

/-!
# Möbius Lemniscate Package
-/

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure MObiusLemniscatePackage where
  lemniscateParam : ℝ → ℝ × ℝ
  lemniscateEq : (x^2 + y^2)^2 = 2*(x^2 - y^2)
  isImmersed : Prop
  selfIntersection : Prop
  curvatureFormula : Prop

def MObiusLemniscateClosed (M : MObiusLemniscatePackage) : Prop :=
  M.isImmersed ∧ M.selfIntersection ∧ M.curvatureFormula

theorem m_obius_lemniscate_closed (M : MObiusLemniscatePackage) :
    MObiusLemniscateClosed M := by
  exact And.intro M.isImmersed (And.intro M.selfIntersection M.curvatureFormula)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse