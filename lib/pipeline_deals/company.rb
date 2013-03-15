require 'pipeline_deals/client'

module PipelineDeals
  class Company < Client
    include PipelineDeals::Query

    ENDPOINT = "companies.json"

  end
end
