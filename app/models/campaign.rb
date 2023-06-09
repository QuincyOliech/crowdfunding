class Campaign < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true, length: {maximum: 500}
    validates :goal_amount, presence: true, numericality: {greater_than:0}
    validates :start_date, presence: true
    validates :end_date, presence: true
    # , date: { after: :start_date }
 
    #include validation for category use inclusion 
    has_many :reviews
    has_many :pledges 
    has_many :users, through: :pledges
    # has_many :reviews, through: :user
end
