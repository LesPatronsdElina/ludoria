require 'rails_helper'

RSpec.describe "PagesController Integration", type: :request do
  describe "GET /" do
    it "When Log Out it has a home page" do
      get root_path
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /La_maison_ludoria" do
    it "It has a about page" do
      get about_path
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /legal" do
    it "It has legal page" do
      get legal_path
      expect(response).to have_http_status(200)
    end
  end
end
