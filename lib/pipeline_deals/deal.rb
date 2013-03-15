require 'pipeline_deals/client'

module PipelineDeals
  class Deal < Client
    self.endpoint = "deals"
  end
end

