require "spec_helper"

describe SiorgsController do
  describe "routing" do

    it "routes to #index" do
      get("/siorgs").should route_to("siorgs#index")
    end

    it "routes to #new" do
      get("/siorgs/new").should route_to("siorgs#new")
    end

    it "routes to #show" do
      get("/siorgs/1").should route_to("siorgs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/siorgs/1/edit").should route_to("siorgs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/siorgs").should route_to("siorgs#create")
    end

    it "routes to #update" do
      put("/siorgs/1").should route_to("siorgs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/siorgs/1").should route_to("siorgs#destroy", :id => "1")
    end

  end
end
