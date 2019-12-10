require "rails_helper"

RSpec.describe TypeProductsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/type_products").to route_to("type_products#index")
    end

    it "routes to #new" do
      expect(:get => "/type_products/new").to route_to("type_products#new")
    end

    it "routes to #show" do
      expect(:get => "/type_products/1").to route_to("type_products#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/type_products/1/edit").to route_to("type_products#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/type_products").to route_to("type_products#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/type_products/1").to route_to("type_products#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/type_products/1").to route_to("type_products#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/type_products/1").to route_to("type_products#destroy", :id => "1")
    end
  end
end
