module Matchy
  module ExpectationBuilder
    def self.build_expectation(match, exp, obj)
      return Matchy::Expectations::OperatorExpectation.new(obj, match) unless exp
      
      if match
        $current_test_case.assert_accepts(exp, obj)
      else
        $current_test_case.assert_rejects(exp, obj)
      end
    end
  end
end
