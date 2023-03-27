class PledgeSerializer < ActiveModel::Serializer
  attributes :id, :pledge_amount, :user_id, :campaign_id
end
