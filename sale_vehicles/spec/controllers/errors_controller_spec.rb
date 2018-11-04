require 'rails_helper'

RSpec.describe ErrorsController, type: :controller do

  describe "GET 404 page" do
    it "returns a success response" do
      get '404'
      expect(response.status).to eq 404
    end
  end

  describe "GET 422 page" do
    it "returns a success response" do
      get '422'
      expect(response.status).to eq 422
    end
  end

  describe "GET 500 page" do
    it "returns a success response" do
      get '500'
      expect(response.status).to eq 500
    end
  end

end
