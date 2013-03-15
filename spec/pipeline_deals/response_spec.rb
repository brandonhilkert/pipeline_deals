require 'spec_helper'

module PipelineDeals
  describe Response do
    let(:collection_response) do
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

    let(:single_response) do
      {
        "name" => "Google",
        "size" => "100"
      }
    end

    describe ".pagination" do
      subject { PipelineDeals::Response.new(collection_response) }

      it "sets the pagination object" do
        subject.pagination.should be_a PipelineDeals::Response::Pagination
      end

      it "returns a descendent of a Hashie object" do
        subject.pagination.should be_a Hashie::Mash
      end
    end

    describe ".results" do
      describe "with a collection" do
        subject { PipelineDeals::Response.new(collection_response) }

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

      describe "with a single response" do
        subject { PipelineDeals::Response.new(single_response) }

        it "turns results into native Result class" do
          subject.results.should be_a PipelineDeals::Response::Result
        end
      end
    end

  end
end
