class User < ActiveRecord::Base
    has_many :periods
    has_secure_password

    validates :name, :email, :password, presence: true
  
end