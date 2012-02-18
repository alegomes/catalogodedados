require "spec_helper"

describe GranularidadeTemporalsController do
  describe "routing" do

    it "routes to #index" do
      get("/granularidade_temporals").should route_to("granularidade_temporals#index")
    end

    it "routes to #new" do
      get("/granularidade_temporals/new").should route_to("granularidade_temporals#new")
    end

    it "routes to #show" do
      get("/granularidade_temporals/1").should route_to("granularidade_temporals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/granularidade_temporals/1/edit").should route_to("granularidade_temporals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/granularidade_temporals").should route_to("granularidade_temporals#create")
    end

    it "routes to #update" do
      put("/granularidade_temporals/1").should route_to("granularidade_temporals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/granularidade_temporals/1").should route_to("granularidade_temporals#destroy", :id => "1")
    end

  end
end
