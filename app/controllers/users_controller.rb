class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user, except: [:created_at, :updated_at]
    end

    def create
        user = User.create(name: Faker::Name.name, username: params[:name], age: rand(13..80))
        render json: user, except: [:created_at, :updated_at]
    end
end
