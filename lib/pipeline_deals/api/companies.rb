module PipelineDeals
  class API < Client
    module Companies
      def companies(options = {})
        get("companies.json", options)
      end
    end
  end
end