require 'rails_helper'

RSpec.describe BlogMetum, type: :model do
  describe 'fields' do
    it { is_expected.to respond_to(:title) }
    it { is_expected.to respond_to(:content) }
    it { is_expected.to respond_to(:blog_article) }
  end
   describe 'associations' do
    it { is_expected.to belong_to(:blog_article) }
  end
end
