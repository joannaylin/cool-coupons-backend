class CouponsController < ApplicationController

    def index
        coupons = Coupon.all
        render json: CouponSerializer.new(coupons).to_serialized_json
    end

    def create
    end

    def update
    end

end
