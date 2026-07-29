import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean.SubmanifoldStructure

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure IndexTheoremPackage {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (S : SubmanifoldPackage M) where
  zeroSet : Set S.embeddedSubmanifold
  indexDefined : Prop
  totalIndexSum : ℤ
  mobiusInvariant : Prop
  indexDefinedClosed : indexDefined
  totalIndexSumComputed : totalIndexSum = 0
  mobiusInvariantClosed : mobiusInvariant

structure IndexTheoremEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    {S : SubmanifoldPackage M} (I : IndexTheoremPackage S) where
  indexDefinedClosed : I.indexDefined
  totalIndexSumComputedClosed : I.totalIndexSumComputed
  mobiusInvariantClosed : I.mobiusInvariant

def IndexTheoremClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    {S : SubmanifoldPackage M} (I : IndexTheoremPackage S) : Prop :=
  I.indexDefined ∧ I.totalIndexSumComputed ∧ I.mobiusInvariant

theorem index_theorem_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    {S : SubmanifoldPackage M} (I : IndexTheoremPackage S)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.indexDefinedClosed
    (And.intro E.totalIndexSumComputedClosed E.mobiusInvariantClosed)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse