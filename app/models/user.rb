class User < ActiveRecord::Base
    has_many :periods

    has_secure_password
  
end