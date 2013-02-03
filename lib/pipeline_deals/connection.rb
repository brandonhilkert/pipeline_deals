require 'faraday'
require 'faraday_middleware'

module PipelineDeals
  module Connection
    private

    def connection
      options = {
        :headers => {'Accept' => "application/json; charset=utf-8", 'User-Agent' => PipelineDeals.user_agent},
        :url => PipelineDeals.endpoint,
      }

      Faraday.new(options) do |conn|
        conn.request :json
        conn.response :json
        conn.response :mashify
        conn.adapter PipelineDeals.adapter
      end
    end
  end
end