class BusinessesController < ApplicationController

    def index
        @businesses = Business.all
        render json: @businesses
    end

    def show
        @business = Business.find_by(id: params[:id])
        render json: @business
    end

end
