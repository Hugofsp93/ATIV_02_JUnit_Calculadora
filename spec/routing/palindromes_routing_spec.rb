require "rails_helper"

RSpec.describe PalindromesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/palindromes").to route_to("palindromes#index")
    end

    it "routes to #new" do
      expect(:get => "/palindromes/new").to route_to("palindromes#new")
    end

    it "routes to #show" do
      expect(:get => "/palindromes/1").to route_to("palindromes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/palindromes/1/edit").to route_to("palindromes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/palindromes").to route_to("palindromes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/palindromes/1").to route_to("palindromes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/palindromes/1").to route_to("palindromes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/palindromes/1").to route_to("palindromes#destroy", :id => "1")
    end
  end
end
