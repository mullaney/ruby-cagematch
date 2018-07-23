require "rails_helper"

RSpec.describe CagematchesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cagematches").to route_to("cagematches#index")
    end

    it "routes to #new" do
      expect(:get => "/cagematches/new").to route_to("cagematches#new")
    end

    it "routes to #show" do
      expect(:get => "/cagematches/1").to route_to("cagematches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cagematches/1/edit").to route_to("cagematches#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cagematches").to route_to("cagematches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cagematches/1").to route_to("cagematches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cagematches/1").to route_to("cagematches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cagematches/1").to route_to("cagematches#destroy", :id => "1")
    end

  end
end
