class BusinessesController < ApplicationController

    def index
        @businesses = Business.all
        render json: @businesses, include: ['coupons.likes']
    end

    def show
        @business = Business.find_by(id: params[:id])
        render json: @business, include: ['coupons.likes']
    end

    def create
        @business = Business.create(name: params[:name], location: Faker::Nation.capital_city, business_type: Faker::Company.industry)
        render json: @business, include: ['coupons.likes']
    end

end
