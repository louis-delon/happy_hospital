require 'rails_helper'

RSpec.describe Shift, type: :model do
  context 'Shift validation' do
    it "is valid with valid attributes" do
      shift = build(:shift)
      expect(shift).to be_valid
    end
    it { should validate_presence_of(:start_date) }
  end

  context 'Shift persistance' do
    it 'should persist a shift' do
      create(:shift)
      expect(Shift.count).to eq(1)
    end
  end

  context 'Shift associations' do
    it { should belong_to(:worker) }
  end
end
