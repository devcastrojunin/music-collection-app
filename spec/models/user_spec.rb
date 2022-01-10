require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { build :user }

  describe 'validations' do
    it { should have_secure_password }
    it { should belong_to(:role) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:full_name) }
    it { should validate_presence_of(:role_id) }
  end

end
