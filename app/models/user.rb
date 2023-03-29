class User < ApplicationRecord
    has_many :pledges 
    has_many :reviews 
    has_many :campaigns,through: :pledges

    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: {minimum: 8}
end
