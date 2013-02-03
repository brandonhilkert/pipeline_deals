require 'faraday'
require 'pipeline_deals/version'

module PipelineDeals
  module Configuration
    # An array of valid keys in the options hash when configuring a {Instagram::API}
      VALID_OPTIONS_KEYS = [
        :adapter,
        :api_key,
        :endpoint,
        :user_agent,
      ].freeze

    DEFAULT_API_KEY = nil
    DEFAULT_ENDPOINT = 'https://api.pipelinedeals.com/api/v3/'.freeze
    DEFAULT_ADAPTER = ::Faraday.default_adapter

    # The user agent that will be sent to the API endpoint if none is set
    DEFAULT_USER_AGENT = "PipelineDeals Ruby Gem #{PipelineDeals::VERSION}".freeze

    attr_accessor *VALID_OPTIONS_KEYS

    def self.extended(base)
      base.reset
    end

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
    end

    # Create a hash of options and their values
    def options
      VALID_OPTIONS_KEYS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

    # Reset all configuration options to defaults
    def reset
      self.adapter        = DEFAULT_ADAPTER
      self.api_key        = DEFAULT_API_KEY
      self.endpoint       = DEFAULT_ENDPOINT
      self.user_agent     = DEFAULT_USER_AGENT
    end
  end
end