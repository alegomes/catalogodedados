require "spec_helper"

describe TipoLinksController do
  describe "routing" do

    it "routes to #index" do
      get("/tipo_links").should route_to("tipo_links#index")
    end

    it "routes to #new" do
      get("/tipo_links/new").should route_to("tipo_links#new")
    end

    it "routes to #show" do
      get("/tipo_links/1").should route_to("tipo_links#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipo_links/1/edit").should route_to("tipo_links#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipo_links").should route_to("tipo_links#create")
    end

    it "routes to #update" do
      put("/tipo_links/1").should route_to("tipo_links#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipo_links/1").should route_to("tipo_links#destroy", :id => "1")
    end

  end
end
