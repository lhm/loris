require 'loris/version'

require 'json'
require 'elasticsearch'
require 'elasticsearch/persistence'

require 'loris/document'
require 'loris/importer'

module Loris

  def self.es_url
    ENV['ELASTICSEARCH_URL'] || 'http://localhost:9200'
  end

  def self.repository
    Elasticsearch::Persistence::Repository.new do
      index 'loris'
      client Elasticsearch::Client.new url: Loris.es_url
    end
  end

end
