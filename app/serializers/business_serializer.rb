class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :business_type
  has_many :coupons
end
