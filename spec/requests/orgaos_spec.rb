require 'spec_helper'

describe "Orgaos" do
  describe "GET /orgaos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get orgaos_path
      response.status.should be(200)
    end
  end
end
