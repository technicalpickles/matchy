module Matchy
  module Assertions
    # Asserts that the given matcher returns true when +target+ is passed to #matches?
    def assert_accepts(matcher, target)
      success = matcher.matches?(target)
      assert_block(matcher.failure_message) { success }
    end

    # Asserts that the given matcher returns false when +target+ is passed to #matches?
    def assert_rejects(matcher, target)
      success = !matcher.matches?(target)
      assert_block(matcher.negative_failure_message) { success }
    end
  end

end
