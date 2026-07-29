import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure WeingartenMapPackage where
  submanifold : Type u
  ambientManifold : Type v
  shapeOperatorSymmetric : Prop
  principalDirectionsOrthogonal : Prop
  curvaturesReal : Prop

structure WeingartenMapEvidence (W : WeingartenMapPackage) where
  shapeOperatorSymmetricClosed : W.shapeOperatorSymmetric
  principalDirectionsOrthogonalClosed : W.principalDirectionsOrthogonal
  curvaturesRealClosed : W.curvaturesReal

def WeingartenMapClosed (W : WeingartenMapPackage) : Prop :=
  W.shapeOperatorSymmetric ∧ W.principalDirectionsOrthogonal ∧ W.curvaturesReal

theorem weingarten_map_closed_from_evidence
    (W : WeingartenMapPackage) (E : WeingartenMapEvidence W) :
    WeingartenMapClosed W := by
  exact And.intro E.shapeOperatorSymmetricClosed
    (And.intro E.principalDirectionsOrthogonalClosed E.curvaturesRealClosed)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse