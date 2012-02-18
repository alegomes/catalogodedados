require "spec_helper"

describe OrgaosController do
  describe "routing" do

    it "routes to #index" do
      get("/orgaos").should route_to("orgaos#index")
    end

    it "routes to #new" do
      get("/orgaos/new").should route_to("orgaos#new")
    end

    it "routes to #show" do
      get("/orgaos/1").should route_to("orgaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/orgaos/1/edit").should route_to("orgaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/orgaos").should route_to("orgaos#create")
    end

    it "routes to #update" do
      put("/orgaos/1").should route_to("orgaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/orgaos/1").should route_to("orgaos#destroy", :id => "1")
    end

  end
end
