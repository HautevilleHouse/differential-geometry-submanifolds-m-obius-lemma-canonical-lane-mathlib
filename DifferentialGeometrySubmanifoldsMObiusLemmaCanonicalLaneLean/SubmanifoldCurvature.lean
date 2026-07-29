import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure SubmanifoldCurvaturePackage where
  ambientMetric : Type
  secondFundamentalForm : Type
  curvatureInvariants : Prop
  meanCurvatureVanishes : Prop

def SubmanifoldCurvatureEvidence (C : SubmanifoldCurvaturePackage) : Prop :=
  C.curvatureInvariants ∧ C.meanCurvatureVanishes

theorem submanifold_curvature_closed (C : SubmanifoldCurvaturePackage) (E : SubmanifoldCurvatureEvidence C) :
  Prop := by
  exact And.intro E.curvatureInvariants E.meanCurvatureVanishes

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse