module V1
  class AreasController < ApplicationController
    def index
      render json: Area.featured.includes(:restaurants).page(params[:page])
    end

    def show
      render json: Area.find(params[:id])
    end
  end
end
