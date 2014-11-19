module Loris
  class Importer

    def initialize
      @repository = Loris.repository
    end

    def import(document)
      response = @repository.save(document)
      result = if response['created'] == true
        {
          document_created: {
            id: response["_id"]
          }
        }
      end
      result
    end

  end
end
