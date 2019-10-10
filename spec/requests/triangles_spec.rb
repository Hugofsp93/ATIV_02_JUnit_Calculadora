require 'rails_helper'

RSpec.describe "Triangles", type: :request do
  describe "GET /triangles" do
    it "works! (now write some real specs)" do
      get triangles_path
      expect(response).to have_http_status(200)
    end
  end
end
