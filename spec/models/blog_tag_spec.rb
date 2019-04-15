require 'rails_helper'

RSpec.describe BlogTag, type: :model do
 describe 'fields' do
    it { is_expected.to respond_to(:name) }
  end
   describe 'associations' do
    it { is_expected.to have_many(:blog_articles) }
    it { is_expected.to have_many(:blog_article_tags) }
  end
end
