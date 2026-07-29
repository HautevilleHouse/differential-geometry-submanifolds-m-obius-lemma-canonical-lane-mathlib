import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure MObiusLemmaPackage where
  surface : Type u
  immersion : Type v
  gaussMapDefined : Prop
  curvatureRelation : Prop
  conformalFactor : Prop
  mobiusInvariant : Prop

structure MObiusLemmaEvidence (M : MObiusLemmaPackage) where
  gaussMapDefinedClosed : M.gaussMapDefined
  curvatureRelationClosed : M.curvatureRelation
  conformalFactorClosed : M.conformalFactor
  mobiusInvariantClosed : M.mobiusInvariant

def MObiusLemmaClosed (M : MObiusLemmaPackage) : Prop :=
  M.gaussMapDefined ∧ M.curvatureRelation ∧ M.conformalFactor ∧ M.mobiusInvariant

theorem mobius_lemma_closed_from_evidence (M : MObiusLemmaPackage) (E : MObiusLemmaEvidence M) :
    MObiusLemmaClosed M := by
  exact And.intro E.gaussMapDefinedClosed
    (And.intro E.curvatureRelationClosed
      (And.intro E.conformalFactorClosed E.mobiusInvariantClosed))

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse