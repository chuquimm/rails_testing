require 'rails_helper'

RSpec.describe "TypeProducts", type: :request do
  describe "GET /type_products" do
    it "works! (now write some real specs)" do
      get type_products_path
      expect(response).to have_http_status(200)
    end
  end
end
