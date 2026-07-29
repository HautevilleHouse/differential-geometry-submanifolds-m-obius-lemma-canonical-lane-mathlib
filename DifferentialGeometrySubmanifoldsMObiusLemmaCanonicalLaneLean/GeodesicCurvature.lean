import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure GeodesicCurvaturePackage where
  curve : Type u
  surface : Type v
  geodesicCurvatureDefined : Prop
  normalCurvatureDefined : Prop
  meusnierTheorem : Prop

structure GeodesicCurvatureEvidence (G : GeodesicCurvaturePackage) where
  geodesicCurvatureDefinedClosed : G.geodesicCurvatureDefined
  normalCurvatureDefinedClosed : G.normalCurvatureDefined
  meusnierTheoremClosed : G.meusnierTheorem

def GeodesicCurvatureClosed (G : GeodesicCurvaturePackage) : Prop :=
  G.geodesicCurvatureDefined ∧ G.normalCurvatureDefined ∧ G.meusnierTheorem

theorem geodesic_curvature_closed_from_evidence
    (G : GeodesicCurvaturePackage) (E : GeodesicCurvatureEvidence G) :
    GeodesicCurvatureClosed G := by
  exact And.intro E.geodesicCurvatureDefinedClosed
    (And.intro E.normalCurvatureDefinedClosed E.meusnierTheoremClosed)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse