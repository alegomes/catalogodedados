require "spec_helper"

describe IncisoCartaServicosCidadaosController do
  describe "routing" do

    it "routes to #index" do
      get("/inciso_carta_servicos_cidadaos").should route_to("inciso_carta_servicos_cidadaos#index")
    end

    it "routes to #new" do
      get("/inciso_carta_servicos_cidadaos/new").should route_to("inciso_carta_servicos_cidadaos#new")
    end

    it "routes to #show" do
      get("/inciso_carta_servicos_cidadaos/1").should route_to("inciso_carta_servicos_cidadaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/inciso_carta_servicos_cidadaos/1/edit").should route_to("inciso_carta_servicos_cidadaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/inciso_carta_servicos_cidadaos").should route_to("inciso_carta_servicos_cidadaos#create")
    end

    it "routes to #update" do
      put("/inciso_carta_servicos_cidadaos/1").should route_to("inciso_carta_servicos_cidadaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/inciso_carta_servicos_cidadaos/1").should route_to("inciso_carta_servicos_cidadaos#destroy", :id => "1")
    end

  end
end
