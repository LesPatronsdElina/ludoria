RSpec.describe "PagesController Integration", type: :request do
  describe "GET /measures" do
    it "When go to my measures it display a page" do
      get measures_path
      expect(response).to have_http_status(200)
    end
  end
end
