class UserCampaignSerializer < ActiveModel::Serializer
  attributes :id, :username, :email 

  has_many :reviews
end
