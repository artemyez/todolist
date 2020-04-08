require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    let(:user) { build(:user) }

    it 'ensures email is present' do
      user.email = nil
      expect(user.save).to eq(false)
    end

    it 'ensures password is present' do
      user.password = nil
      expect(user.save).to eq(false)
    end

    it 'should save succesfully' do
      expect(user.save).to eq(true)
    end
  end
end
