class Coupon < ApplicationRecord
  belongs_to :business
  has_many :likes

  def like_count
    self.likes.count
  end
end
