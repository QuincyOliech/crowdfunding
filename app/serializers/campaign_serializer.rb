class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category, :goal_amount, :current_amount, :start_date, :end_date

  has_many :users, serializer: UserCampaignSerializer
end
