require 'rails_helper'

RSpec.describe "Registrations", type: :request do
  subject(:user) { build :user }

  describe 'POST /create' do
    it 'New user' do      
      post '/sign_up', params: { user: {
          username: user.username,
          full_name: user.full_name,
          password: user.password,
          role_id: user.role_id
        }
      }
      expect(response).to have_http_status(:ok)
    end
  end

  
end
