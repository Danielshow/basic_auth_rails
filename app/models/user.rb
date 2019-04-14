# Class for model User
class User < ApplicationRecord
  validate :email, presence: true
  validate :name, presence: true, length: { minimum: 3 }
  has_secure_password
end
