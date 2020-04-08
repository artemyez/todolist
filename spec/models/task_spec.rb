require 'rails_helper'

RSpec.describe Task, type: :model do
  context 'validation tests' do
    let(:task) { build(:task, list: create(:list)) }

    it 'ensures title is present' do
      task.title = nil
      expect(task.save).to eq(false)
    end

    it 'ensures user_id is present' do
      task.list_id = nil
      expect(task.save).to eq(false)
    end

    it 'should save succesfully' do
      expect(task.save).to eq(true)
    end
  end
end
