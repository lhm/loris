module Loris
  class Importer

    def initialize
      @repository = Loris.repository
    end

    def import(document)
      @repository.save(document)
    end

  end
end
