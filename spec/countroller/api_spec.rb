require 'rails_helper'
RSpec.describe Api::V1::DevelopersController, type: :controller do
  describe "GET #show" do
    def trigger
      get :show, params: { id: 1 }
    end

    it "returns http success" do
      trigger
      expect(response.status).to eq(200)
    end
  end
end