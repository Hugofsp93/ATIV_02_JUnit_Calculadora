require 'rails_helper'

RSpec.describe "Palindromes", type: :request do
  describe "GET /palindromes" do
    it "works! (now write some real specs)" do
      get palindromes_path
      expect(response).to have_http_status(200)
    end
  end
end
