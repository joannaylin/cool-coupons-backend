class BusinessesController < ApplicationController

    def index
        businesses = Business.all
        render json: BusinessSerializer.new(businesses).to_serialized_json
    end

    def show
        business = Business.find_by(id: params[:id])
        render json: BusinessSerializer.new(business).to_serialized_json
    end

end
