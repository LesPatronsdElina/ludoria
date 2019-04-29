require 'rails_helper'

RSpec.describe BlogArticleTag, type: :model do
  describe 'fields' do
    it { is_expected.to respond_to(:blog_tag) }
    it { is_expected.to respond_to(:blog_article) }
  end
   describe 'associations' do
    it { is_expected.to belong_to(:blog_article) }
    it { is_expected.to belong_to(:blog_tag) }
  end
end
