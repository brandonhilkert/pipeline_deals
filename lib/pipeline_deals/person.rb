require 'pipeline_deals/client'

module PipelineDeals
  class Person < Client
    include PipelineDeals::Query

    def initialize
      @endpoint = "people"
    end

  end
end

