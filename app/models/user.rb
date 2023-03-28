class User < ApplicationRecord
    has_many :campaigns 
    has_many :pledges 
    has_many :reviews 

    has_secure_password
    validates :email, presence: true, uniqueness: true
end
