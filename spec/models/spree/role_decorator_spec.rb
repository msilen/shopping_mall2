require 'spec_helper'

describe Spree::Role do
  it { should have_many(:users).through(:role_users) }

  context 'has_many through sanity check' do
    it 'associates correctly' do
      role = create :role
      role.users << create(:user)

      expect(role.users.size).to eq 1
    end
  end
end
