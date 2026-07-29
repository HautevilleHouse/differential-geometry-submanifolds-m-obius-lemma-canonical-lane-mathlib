import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

def submanifoldProjection : Projection SubmanifoldEndgameState :=
  { toFun := fun x => x
    idempotent := by intro x; rfl
  }

theorem submanifold_projection_idempotent (x : SubmanifoldEndgameState) :
    submanifoldProjection.toFun (submanifoldProjection.toFun x) = submanifoldProjection.toFun x := by
  exact submanifoldProjection.idempotent x

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse