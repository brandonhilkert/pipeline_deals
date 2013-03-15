module PipelineDeals
  module Query
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def find(id)
        self.new.get("#{endpoint}/#{id}")
      end

      def all
        self.new.get(endpoint)
      end
    end
  end
end

