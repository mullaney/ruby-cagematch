require 'rails_helper'

RSpec.describe "Cagematches", type: :request do
  describe "GET /cagematches" do
    it "works! (now write some real specs)" do
      get cagematches_path
      expect(response).to have_http_status(200)
    end
  end
end
