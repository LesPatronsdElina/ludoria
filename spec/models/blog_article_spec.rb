require 'rails_helper'

RSpec.describe BlogArticle, type: :model do
  describe 'fields' do
    it { is_expected.to respond_to(:title) }
    it { is_expected.to respond_to(:content) }
    it { is_expected.to respond_to(:cover_picture) }
    it { is_expected.to respond_to(:pdf) }
    it { is_expected.to respond_to(:status) }
    it { is_expected.to respond_to(:visible_on_home) }
  end
   describe 'associations' do
    it { is_expected.to have_many(:blog_tags) }
    it { is_expected.to have_many(:blog_article_tags) }
    it { is_expected.to have_many(:blog_photos) }
    it { is_expected.to have_many(:blog_meta) }
  end
end

