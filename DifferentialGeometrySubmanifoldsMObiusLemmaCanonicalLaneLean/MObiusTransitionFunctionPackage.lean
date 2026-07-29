import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure MObiusTransitionFunctionPackage where
  coordinateCharts : List (Type u)
  transitionMaps : List (Type u → Type u)
  mobiusGlueCondition : Prop
  differentiability : Prop
  compatibility : Prop
  mobiusGlueConditionTerm : mobiusGlueCondition
  differentiabilityTerm : differentiability
  compatibilityTerm : compatibility

structure MObiusTransitionFunctionEvidence (M : MObiusTransitionFunctionPackage) where
  mobiusGlueConditionClosed : M.mobiusGlueCondition
  differentiabilityClosed : M.differentiability
  compatibilityClosed : M.compatibility

def MObiusTransitionFunctionClosed (M : MObiusTransitionFunctionPackage) : Prop :=
  M.mobiusGlueCondition ∧ M.differentiability ∧ M.compatibility

theorem mobius_transition_function_closed_from_evidence (M : MObiusTransitionFunctionPackage)
    (E : MObiusTransitionFunctionEvidence M) : MObiusTransitionFunctionClosed M := by
  exact And.intro E.mobiusGlueConditionClosed (And.intro E.differentiabilityClosed E.compatibilityClosed)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse