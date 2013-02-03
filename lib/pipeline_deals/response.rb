require 'hashie/mash'

module PipelineDeals
  class Response
    class Pagination < ::Hashie::Mash; end
    class Result < ::Hashie::Mash; end

    attr_reader :response

    def initialize(response)
      @response = response
    end

    def pagination
      Pagination.new(response.fetch("pagination"))
    end

    def results
      response.fetch("entries").map{ |entry| Result.new(entry) }
    end
  end
end