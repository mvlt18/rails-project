class User < ApplicationRecord
  has_many :submissions
  has_many :colleges, through: :submissions

  has_secure_password
end
