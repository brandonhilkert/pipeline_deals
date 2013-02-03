require 'spec_helper'

module PipelineDeals
  describe Response do
    let(:response) do
     {
        "pagination" => {
          "per_page"=>200,
          "page"=>1,
          "total"=>17132,
          "page_var"=>"page",
          "pages"=>86
        },
        "entries" => [
          {
            "name" => "Google",
            "size" => "100"
          },
          {
            "name" => "Apple",
            "size" => "100"
          }
        ]
      }
    end

    subject { PipelineDeals::Response.new(response) }

    describe ".pagination" do
      it "sets the pagination object" do
        subject.pagination.should be_a PipelineDeals::Response::Pagination
      end

      it "returns a descendent of a Hashie object" do
        subject.pagination.should be_a Hashie::Mash
      end
    end

    describe ".results" do
      it "sets the results object" do
        subject.results.should be_a Array
      end

      it "turns results into native Result class" do
        subject.results.first.should be_a PipelineDeals::Response::Result
      end

      it "returns an array of descendents of Hashie objects" do
        subject.results.first.should be_a Hashie::Mash
      end

    end

  end
end