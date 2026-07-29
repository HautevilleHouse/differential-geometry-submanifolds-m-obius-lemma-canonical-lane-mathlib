import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure SubmanifoldSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Type

structure SubmanifoldAdmittedObject where
  ambient : SubmanifoldSpace
  submanifoldType : Prop
  moebiusLemmaCondition : Prop
  conclusion : moebiusLemmaCondition

structure SubmanifoldEndgameState where
  object : SubmanifoldAdmittedObject

def SubmanifoldWitnessClosed (O : SubmanifoldAdmittedObject) : Prop :=
  O.moebiusLemmaCondition

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse