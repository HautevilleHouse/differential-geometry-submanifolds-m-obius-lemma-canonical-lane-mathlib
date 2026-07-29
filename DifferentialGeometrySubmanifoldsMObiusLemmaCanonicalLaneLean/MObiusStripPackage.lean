import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure MObiusStripPackage where
  surface : Type u
  topology : TopologicalSpace surface
  chartAtlas : Type v
  smoothStructure : Prop
  dimensionTwo : Prop
  orientable : Prop
  smoothStructureTerm : smoothStructure
  dimensionTwoTerm : dimensionTwo
  orientableTerm : orientable

structure MObiusStripEvidence (M : MObiusStripPackage) where
  smoothStructureClosed : M.smoothStructure
  dimensionTwoClosed : M.dimensionTwo
  orientableClosed : M.orientable

def MObiusStripClosed (M : MObiusStripPackage) : Prop :=
  M.smoothStructure ∧ M.dimensionTwo ∧ M.orientable

theorem mobius_strip_closed_from_evidence (M : MObiusStripPackage)
    (E : MObiusStripEvidence M) : MObiusStripClosed M := by
  exact And.intro E.smoothStructureClosed (And.intro E.dimensionTwoClosed E.orientableClosed)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse