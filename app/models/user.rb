class User < ApplicationRecord
  has_secure_password  ##this takes care of password validations

  has_many :submissions
  has_many :colleges, through: :submissions

  validates :name, :email, presence: true
  validates :email, uniqueness: true

  def self.find_or_create_by_omniauth(auth_hash)
    self.where(:email => auth_hash["info"]["email"]).first_or_create do  |user|
      user.name = auth_hash["info"]["name"]
      user.password = SecureRandom.hex
    end
  end

####Same use as above - old code before refactoring
  # def self.find_or_create_by_omniauth(auth_hash)
  #   oauth_email = auth_hash["info"]["email"]
  #   if user = User.find_by(:email => oauth_email)
  #     return user
  #   else
  #     oauth_name = request.env["omniauth.auth"]["info"]["name"]
  #     user = User.new(:name => oauth_name, :email => oauth_email, :password => SecureRandom.hex)
  #     return user
  #   end
  # end

end
