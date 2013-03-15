require 'pipeline_deals/client'

module PipelineDeals
  class Company < Client
    self.endpoint = "companies"
  end
end
