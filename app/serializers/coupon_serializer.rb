class CouponSerializer < ActiveModel::Serializer
  attributes :id, :name, :code, :expiration_date
  belongs_to :business
  has_many :likes
end
