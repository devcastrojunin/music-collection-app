FactoryBot.define do
  factory :user do
    username { 'anotheruser' }
    full_name { 'Tom Evans' }
    password { 'admin@123' }
    role_id { '2' }
  end
end
