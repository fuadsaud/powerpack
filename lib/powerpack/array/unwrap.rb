unless Array.method_defined? :unwrap
  class Array
    # If the array has only one element, return it, otherwise return self.
    #
    # @return [Array] self
    # @return [Object] the only element in the array
    #
    # @example
    #   [].unwrap #=> []
    #   [1].unwrap #=> 1
    #   [1, 2, 3].unwrap #=> [1, 2, 3]
    def unwrap
      size == 1 ? first : self
    end
  end
end
