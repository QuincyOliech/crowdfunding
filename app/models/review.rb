class Review < ApplicationRecord
    validates :comment, presence: true, length: {maximum: 100}
    validates :rating, presence: true, inclusion: {in: 1..5}
    belongs_to :user
    belongs_to :campaign
end

