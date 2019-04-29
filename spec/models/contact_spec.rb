require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe 'fields' do
    it { is_expected.to respond_to(:email) }
    it { is_expected.to respond_to(:content) }
  end
  describe 'validations' do
    it { is_expected.to validate_presence_of(:content) }
  end
end
