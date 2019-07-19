class User < ApplicationRecord
  has_many :submissions
  has_many :colleges, through: :submissions

  validates :name, :email, presence: true
  validates :email, uniqueness: true
  

  has_secure_password  ##this takes care of password validations
end
