# frozen_string_literal: true

require "matchi/matcher/be_an_instance_of"

# Namespace for the Matchi library.
module Matchi
  # Collection of matcher classes.
  module Matcher
    # *Type/class* matcher.
    #
    # @example
    #   be_instance_of = Matchi::Matcher::BeInstanceOf.new(String)
    #   be_instance_of.matches? { "foo" } # => true
    class BeInstanceOf < ::Matchi::Matcher::BeAnInstanceOf
    end
  end
end
