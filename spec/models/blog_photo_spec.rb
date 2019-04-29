require 'rails_helper'

RSpec.describe BlogPhoto, type: :model do
  describe 'fields' do
    it { is_expected.to respond_to(:photo) }
    it { is_expected.to respond_to(:alt) }
  end
   describe 'associations' do
    it { is_expected.to belong_to(:blog_article) }
  end
end
