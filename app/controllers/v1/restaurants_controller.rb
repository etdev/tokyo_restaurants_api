module V1
  class RestaurantsController < ApplicationController
    def index
      restaurants = if params[:area_id].present?
                      Restaurant.by_area(params[:area_id])
                    else
                      Restaurant.all
                    end
      render json: restaurants.page(params[:page])
    end

    def show
      render json: Restaurant.find(params[:id])
    end
  end
end
