require "spec_helper"

describe RubyqsController do
  describe "routing" do

    it "routes to #index" do
      get("/rubyqs").should route_to("rubyqs#index")
    end

    it "routes to #new" do
      get("/rubyqs/new").should route_to("rubyqs#new")
    end

    it "routes to #show" do
      get("/rubyqs/1").should route_to("rubyqs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rubyqs/1/edit").should route_to("rubyqs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rubyqs").should route_to("rubyqs#create")
    end

    it "routes to #update" do
      put("/rubyqs/1").should route_to("rubyqs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rubyqs/1").should route_to("rubyqs#destroy", :id => "1")
    end

  end
end
