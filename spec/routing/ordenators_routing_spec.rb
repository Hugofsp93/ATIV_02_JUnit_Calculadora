require "rails_helper"

RSpec.describe OrdenatorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/ordenators").to route_to("ordenators#index")
    end

    it "routes to #new" do
      expect(:get => "/ordenators/new").to route_to("ordenators#new")
    end

    it "routes to #show" do
      expect(:get => "/ordenators/1").to route_to("ordenators#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ordenators/1/edit").to route_to("ordenators#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/ordenators").to route_to("ordenators#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ordenators/1").to route_to("ordenators#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ordenators/1").to route_to("ordenators#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ordenators/1").to route_to("ordenators#destroy", :id => "1")
    end
  end
end
