module Matchy
  module ExpectationBuilder
    def self.build_expectation(should_succeed, matcher, object)
      return Matchy::Expectations::OperatorExpectation.new(object, should_succeed) unless matcher
      
      if should_succeed
        $current_test_case.assert_accepts(matcher, object)
      else
        $current_test_case.assert_rejects(matcher, object)
      end
    end
  end
end
