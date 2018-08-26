# frozen_string_literal: true

require_relative 'be_instance_of'

# Namespace for the Matchi library.
module Matchi
  # Collection of matchers.
  module Matchers
    # **Type/class** matcher.
    module BeAnInstanceOf
      # The matcher.
      class Matcher < BeInstanceOf::Matcher
      end
    end
  end
end
