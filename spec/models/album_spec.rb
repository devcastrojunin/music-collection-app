require 'rails_helper'

RSpec.describe Album, type: :model do
  subject(:album) { build :album }

  describe 'validations' do
    it { should validate_presence_of(:artist) }
    it { should validate_presence_of(:album_name) }
    it { should validate_presence_of(:year) }
  end
end
