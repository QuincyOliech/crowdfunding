class Pledge < ApplicationRecord
    validates :pledge_amount, presence: true, numericality: {greater_than: 0}
    
    belongs_to :user
    belongs_to :campaign  
end
