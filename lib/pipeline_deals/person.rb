require 'pipeline_deals/client'

module PipelineDeals
  class Person < Client
    self.endpoint = "companies"
  end
end

