class User < ApplicationRecord
  has_secure_password
  belongs_to :role

  validates :username , presence: true, uniqueness: true
  validates :full_name , presence: true
  validates :password , presence: true
  validates :role_id , presence: true
end
