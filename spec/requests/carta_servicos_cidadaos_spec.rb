require 'spec_helper'

describe "CartaServicosCidadaos" do
  describe "GET /carta_servicos_cidadaos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get carta_servicos_cidadaos_path
      response.status.should be(200)
    end
  end
end
