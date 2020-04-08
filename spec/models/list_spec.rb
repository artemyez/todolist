require 'rails_helper'

RSpec.describe List, type: :model do
  context 'validation tests' do
    let(:list) { build(:list, user: create(:user)) }

    it 'ensures title is present' do
      list.title = nil
      expect(list.save).to eq(false)
    end

    it 'ensures user_id is present' do
      list.user_id = nil
      expect(list.save).to eq(false)
    end

    it 'should save succesfully' do
      expect(list.save).to eq(true)
    end
  end
end
