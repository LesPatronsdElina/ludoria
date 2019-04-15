require 'rails_helper'

RSpec.describe "PagesController Integration", type: :request do
  describe "GET /" do
    it "When Log Out it has a home page" do
      get root_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /Mes_mesures" do
    it "When go to my measures it display a page" do
      get my_measures_path
      expect(response).to have_http_status(200)
    end
  end

end
