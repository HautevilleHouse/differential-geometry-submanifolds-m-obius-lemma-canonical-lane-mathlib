import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure RiemannianSubmanifoldPackage where
  embeddedManifold : Type u
  embeddingMap : Type v
  inducedMetric : Prop
  secondFundamentalForm : Prop
  shapeOperator : Prop

structure RiemannianSubmanifoldEvidence (G : RiemannianSubmanifoldPackage) where
  inducedMetricClosed : G.inducedMetric
  secondFundamentalFormClosed : G.secondFundamentalForm
  shapeOperatorClosed : G.shapeOperator

def RiemannianSubmanifoldClosed (G : RiemannianSubmanifoldPackage) : Prop :=
  G.inducedMetric ∧ G.secondFundamentalForm ∧ G.shapeOperator

theorem riemannian_submanifold_closed_from_evidence
    (G : RiemannianSubmanifoldPackage) (E : RiemannianSubmanifoldEvidence G) :
    RiemannianSubmanifoldClosed G := by
  exact And.intro E.inducedMetricClosed
    (And.intro E.secondFundamentalFormClosed E.shapeOperatorClosed)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse