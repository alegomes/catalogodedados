require "spec_helper"

describe CartaServicosCidadaosController do
  describe "routing" do

    it "routes to #index" do
      get("/carta_servicos_cidadaos").should route_to("carta_servicos_cidadaos#index")
    end

    it "routes to #new" do
      get("/carta_servicos_cidadaos/new").should route_to("carta_servicos_cidadaos#new")
    end

    it "routes to #show" do
      get("/carta_servicos_cidadaos/1").should route_to("carta_servicos_cidadaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/carta_servicos_cidadaos/1/edit").should route_to("carta_servicos_cidadaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/carta_servicos_cidadaos").should route_to("carta_servicos_cidadaos#create")
    end

    it "routes to #update" do
      put("/carta_servicos_cidadaos/1").should route_to("carta_servicos_cidadaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/carta_servicos_cidadaos/1").should route_to("carta_servicos_cidadaos#destroy", :id => "1")
    end

  end
end
