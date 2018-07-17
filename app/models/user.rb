class User < ApplicationRecord
  validates_presence_of :password_digest, :username, :email, :role
  validates_uniqueness_of :username, :email
  has_many :comments
  has_secure_password

  enum role: %w(default admin)
end
