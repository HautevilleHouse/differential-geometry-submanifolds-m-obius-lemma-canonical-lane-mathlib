import DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure ObiusAdmittedObject where
  curve : Type
  topology : TopologicalSpace curve
  submanifold : Prop
  mobiusProperty : Prop
  conclusion : submanifold ∧ mobiusProperty

def ObiusWitnessClosed (O : ObiusAdmittedObject) : Prop :=
  O.submanifold ∧ O.mobiusProperty

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse
