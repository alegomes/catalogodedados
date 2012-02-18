require 'spec_helper'

describe "GranularidadeTemporals" do
  describe "GET /granularidade_temporals" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get granularidade_temporals_path
      response.status.should be(200)
    end
  end
end
