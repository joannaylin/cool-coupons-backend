class LikeSerializer < ActiveModel::Serializer
  attributes :id, :coupon_id
  belongs_to :coupon
end
