module PipelineDeals
  module Query
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def find(id)

      end

      def all
        get(@endpoint)
      end
    end
  end
end

