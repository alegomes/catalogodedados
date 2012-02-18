require "spec_helper"

describe LicencasController do
  describe "routing" do

    it "routes to #index" do
      get("/licencas").should route_to("licencas#index")
    end

    it "routes to #new" do
      get("/licencas/new").should route_to("licencas#new")
    end

    it "routes to #show" do
      get("/licencas/1").should route_to("licencas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/licencas/1/edit").should route_to("licencas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/licencas").should route_to("licencas#create")
    end

    it "routes to #update" do
      put("/licencas/1").should route_to("licencas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/licencas/1").should route_to("licencas#destroy", :id => "1")
    end

  end
end
