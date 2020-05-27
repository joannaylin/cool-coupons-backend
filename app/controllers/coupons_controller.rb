class CouponsController < ApplicationController

    def index
        coupons = Coupon.all
        render json: CouponSerializer.new(coupons).to_serialized_json
    end

    def create
        coupon = Coupon.create(name: params[:name], code: params[:code], expiration_date: params[:expiration_date], business_id: params[:business_id])
        render json: CouponSerializer.new(coupon).to_serialized_json
    end

    def update
    end

    def destroy
        coupon = Coupon.find_by(id: params[:id])
        coupon.destroy
    end

end
