class CouponSerializer < ActiveModel::Serializer
  attributes :id, :name, :code, :expiration_date, :likes
  belongs_to :business
  # has_many :likes

  def likes
    @object.likes.length
  end

end
