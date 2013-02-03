require 'spec_helper'

describe PipelineDeals do
  let(:api_key) { "example_key" }

  after(:each) do
    PipelineDeals.reset
  end

  describe "defaults" do
    it "sets adapter" do
      PipelineDeals.adapter.should == PipelineDeals::Configuration::DEFAULT_ADAPTER
    end

    it "sets endpoint" do
      PipelineDeals.endpoint.should == PipelineDeals::Configuration::DEFAULT_ENDPOINT
    end

    it "sets API key" do
      PipelineDeals.api_key.should == PipelineDeals::Configuration::DEFAULT_API_KEY
    end

    it "sets user agent" do
      PipelineDeals.user_agent.should == PipelineDeals::Configuration::DEFAULT_USER_AGENT
    end
  end

  describe ".api_key=" do
    it "sets the api_key" do
      PipelineDeals.api_key = "example_key"
      PipelineDeals.api_key.should == "example_key"
    end
  end

  describe ".adapter=" do
    it "sets the adapter" do
      PipelineDeals.adapter = "adapter"
      PipelineDeals.adapter.should == "adapter"
    end
  end

  describe ".user_agent=" do
    it "sets the user agent" do
      PipelineDeals.user_agent = "agent"
      PipelineDeals.user_agent.should == "agent"
    end
  end

  describe ".endpoint=" do
    it "sets the endpoint" do
      PipelineDeals.endpoint = "https://example.com"
      PipelineDeals.endpoint.should == "https://example.com"
    end
  end

  describe ".configure" do
    before(:each) do
      PipelineDeals.configure do |config|
        config.api_key    = "example_key"
        config.adapter    = "adapter"
        config.user_agent = "agent"
        config.endpoint   = "https://example.com"
      end
    end

    PipelineDeals::Configuration::VALID_OPTIONS_KEYS.each do |key|
      it "sets the #{key}" do
        PipelineDeals.configure do |config|
          config.send("#{key}=", key)
          PipelineDeals.send(key).should == key
        end
      end
    end
  end

end