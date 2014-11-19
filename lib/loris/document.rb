module Loris
  class Document
    def initialize(attributes={})
      @attributes = attributes
    end

    def to_hash
      @attributes
    end
  end
end
