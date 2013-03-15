module PipelineDeals
  module Query
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def all
        self.new.get(endpoint)
      end
    end
  end
end

