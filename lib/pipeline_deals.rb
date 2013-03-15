require 'faraday'
require 'pipeline_deals/connection'
require 'pipeline_deals/configuration'
require 'pipeline_deals/client'
require 'pipeline_deals/query'
require 'pipeline_deals/errors'
require 'pipeline_deals/response'
require 'pipeline_deals/version'

require 'pipeline_deals/company'
require 'pipeline_deals/deal'
require 'pipeline_deals/person'

module PipelineDeals
  extend Configuration
end
