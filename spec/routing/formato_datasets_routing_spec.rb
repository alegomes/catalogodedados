require "spec_helper"

describe FormatoDatasetsController do
  describe "routing" do

    it "routes to #index" do
      get("/formato_datasets").should route_to("formato_datasets#index")
    end

    it "routes to #new" do
      get("/formato_datasets/new").should route_to("formato_datasets#new")
    end

    it "routes to #show" do
      get("/formato_datasets/1").should route_to("formato_datasets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/formato_datasets/1/edit").should route_to("formato_datasets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/formato_datasets").should route_to("formato_datasets#create")
    end

    it "routes to #update" do
      put("/formato_datasets/1").should route_to("formato_datasets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/formato_datasets/1").should route_to("formato_datasets#destroy", :id => "1")
    end

  end
end
