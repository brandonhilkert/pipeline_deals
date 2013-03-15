require 'pipeline_deals/client'

module PipelineDeals
  class Deal < Client
    include PipelineDeals::Query

    def initialize
      @endpoint = "deals"
    end
  end
end

