require "spec_helper"

describe GranularidadeGeograficasController do
  describe "routing" do

    it "routes to #index" do
      get("/granularidade_geograficas").should route_to("granularidade_geograficas#index")
    end

    it "routes to #new" do
      get("/granularidade_geograficas/new").should route_to("granularidade_geograficas#new")
    end

    it "routes to #show" do
      get("/granularidade_geograficas/1").should route_to("granularidade_geograficas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/granularidade_geograficas/1/edit").should route_to("granularidade_geograficas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/granularidade_geograficas").should route_to("granularidade_geograficas#create")
    end

    it "routes to #update" do
      put("/granularidade_geograficas/1").should route_to("granularidade_geograficas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/granularidade_geograficas/1").should route_to("granularidade_geograficas#destroy", :id => "1")
    end

  end
end
