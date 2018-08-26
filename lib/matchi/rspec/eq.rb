# frozen_string_literal: true

# Namespace for the Matchi library.
module Matchi
  # Collection of matchers.
  module Matchers
    # **Equivalence** matcher.
    module Eq
      # The matcher.
      class Matcher < Eql::Matcher
      end
    end
  end
end
