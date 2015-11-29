require 'matchi/matchers_base' unless defined?(::Matchi::MatchersBase)

# Namespace for the Matchi library.
module Matchi
  # Collection of matchers.
  module Matchers
    # **Identity** matcher.
    module Be
      # The matcher.
      class Matcher < Equal::Matcher
      end
    end
  end
end
