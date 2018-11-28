require 'rails_helper'

RSpec.describe Worker, type: :model do
  context 'Worker validation' do
    it "is valid with valid attributes" do
      worker = build(:worker)
      expect(worker).to be_valid
    end
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:status) }
    it { should validate_presence_of(:price) }
  end

  context 'Worker persistance' do
    it 'should persist a worker' do
      create(:worker)
      expect(Worker.count).to eq(1)
    end
  end

  context 'Worker associations' do
    it { should have_many(:shifts).dependent(:destroy) }
  end
end
