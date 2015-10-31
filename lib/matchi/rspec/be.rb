# Namespace for the Matchi library.
module Matchi
  # **Identity** matcher.
  class Be < Equal
    # Returns a string representing the matcher.
    #
    # @return [String] A string representing the matcher.
    def to_s
      "be #{@expected.inspect}"
    end

    # Returns a hash of one key-value pair with a key corresponding to the
    #   matcher and a value corresponding to its initialize parameters.
    #
    # @return [Hash] A hash of one key-value pair.
    def to_h
      { Be: [@expected] }
    end
  end
end
