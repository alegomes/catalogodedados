require "spec_helper"

describe VcgesController do
  describe "routing" do

    it "routes to #index" do
      get("/vcges").should route_to("vcges#index")
    end

    it "routes to #new" do
      get("/vcges/new").should route_to("vcges#new")
    end

    it "routes to #show" do
      get("/vcges/1").should route_to("vcges#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vcges/1/edit").should route_to("vcges#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vcges").should route_to("vcges#create")
    end

    it "routes to #update" do
      put("/vcges/1").should route_to("vcges#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vcges/1").should route_to("vcges#destroy", :id => "1")
    end

  end
end
