require 'pipeline_deals/client'
require 'pipeline_deals/api/companies'

module PipelineDeals
  class API < Client
    include PipelineDeals::API::Companies
  end
end