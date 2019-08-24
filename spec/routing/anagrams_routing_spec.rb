require "rails_helper"

RSpec.describe AnagramsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/anagrams").to route_to("anagrams#index")
    end

    it "routes to #new" do
      expect(:get => "/anagrams/new").to route_to("anagrams#new")
    end

    it "routes to #show" do
      expect(:get => "/anagrams/1").to route_to("anagrams#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/anagrams/1/edit").to route_to("anagrams#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/anagrams").to route_to("anagrams#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/anagrams/1").to route_to("anagrams#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/anagrams/1").to route_to("anagrams#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/anagrams/1").to route_to("anagrams#destroy", :id => "1")
    end
  end
end
