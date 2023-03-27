class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category, :goal_amount, :start_date, :end_date, :user_id
end
