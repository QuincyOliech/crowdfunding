class User < ApplicationRecord
    has_many :campaigns 
    has_many :pledges 
    has_many :reviews 
end
