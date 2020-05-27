class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
        render json: @coupons
    end

    def create
        @coupon = Coupon.create(coupon_params)
        render json: @coupon
    end

    def update
    end

    def destroy
        coupon = Coupon.find_by(id: params[:id])
        coupon.destroy
    end

    private

    def coupon_params
        params.require(:coupon).permit(:name, :code, :expiration_date, :business_id)
    end

end
