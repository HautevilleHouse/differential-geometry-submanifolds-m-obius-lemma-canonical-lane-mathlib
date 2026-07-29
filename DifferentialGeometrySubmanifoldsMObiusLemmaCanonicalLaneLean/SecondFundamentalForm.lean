import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean

structure SecondFundamentalFormPackage where
  secondFundamentalFormType : Type u
  gaussEquation : Prop
  codazziEquation : Prop
  ricciEquation : Prop

structure SecondFundamentalFormEvidence (S : SecondFundamentalFormPackage) where
  gaussEquationClosed : S.gaussEquation
  codazziEquationClosed : S.codazziEquation
  ricciEquationClosed : S.ricciEquation

def SecondFundamentalFormClosed (S : SecondFundamentalFormPackage) : Prop :=
  S.gaussEquation ∧ S.codazziEquation ∧ S.ricciEquation

theorem second_fundamental_form_closed_from_evidence
    (S : SecondFundamentalFormPackage) (E : SecondFundamentalFormEvidence S) :
    SecondFundamentalFormClosed S := by
  exact And.intro E.gaussEquationClosed
    (And.intro E.codazziEquationClosed E.ricciEquationClosed)

end DifferentialGeometrySubmanifoldsMObiusLemmaCanonicalLaneLean
end HautevilleHouse