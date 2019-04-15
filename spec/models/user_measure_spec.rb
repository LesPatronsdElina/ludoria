require 'rails_helper'

RSpec.describe UserMeasure, type: :model do
   describe 'fields' do
    it { is_expected.to respond_to(:value) }
    it { is_expected.to respond_to(:measure) }
    it { is_expected.to respond_to(:user) }
  end
  describe 'validations' do
    it { is_expected.to validate_numericality_of(:value) }
  end
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:measure) }
  end
end
