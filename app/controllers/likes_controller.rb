class LikesController < ApplicationController

    def index
        likes = Like.all
        render json: likes, only: [:id, :coupon_id]
    end

    def create
        user = User.find_by(id: params[:id])
        like = Like.create(coupon_id: params[:coupon_id])
        render json: like
    end

    def destroy
    end

end
