require "spec_helper"

describe TipoDatasetsController do
  describe "routing" do

    it "routes to #index" do
      get("/tipo_datasets").should route_to("tipo_datasets#index")
    end

    it "routes to #new" do
      get("/tipo_datasets/new").should route_to("tipo_datasets#new")
    end

    it "routes to #show" do
      get("/tipo_datasets/1").should route_to("tipo_datasets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipo_datasets/1/edit").should route_to("tipo_datasets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipo_datasets").should route_to("tipo_datasets#create")
    end

    it "routes to #update" do
      put("/tipo_datasets/1").should route_to("tipo_datasets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipo_datasets/1").should route_to("tipo_datasets#destroy", :id => "1")
    end

  end
end
