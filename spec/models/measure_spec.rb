require 'rails_helper'

RSpec.describe Measure, type: :model do
  describe 'fields' do
    it { is_expected.to respond_to(:position) }
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:video) }
    it { is_expected.to respond_to(:description) }
    it { is_expected.to respond_to(:important) }
  end
  describe 'validations' do
    it { is_expected.to validate_presence_of(:position) }
  end
  describe 'associations' do
    it { is_expected.to have_many(:user_measures) }
  end
end
