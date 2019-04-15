require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'fields' do
    it { is_expected.to respond_to(:first_name) }
    it { is_expected.to respond_to(:last_name) }
  end
  describe 'validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end
  describe 'associations' do
    it { is_expected.to have_many(:user_measures) }
  end
end
