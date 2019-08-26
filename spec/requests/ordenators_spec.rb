require 'rails_helper'

RSpec.describe "Ordenators", type: :request do
  describe "GET /ordenators" do
    it "works! (now write some real specs)" do
      get ordenators_path
      expect(response).to have_http_status(200)
    end
  end
end
