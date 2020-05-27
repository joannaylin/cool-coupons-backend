class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
        render json: @coupons
    end

    def create
        @coupon = Coupon.create(name: params[:name], code: params[:code], expiration_date: params[:expiration_date], business_id: params[:business_id])
        render json: @coupon
    end

    def update
    end

    def destroy
        coupon = Coupon.find_by(id: params[:id])
        coupon.destroy
    end

end
