class Api::V1::CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

    # GET /categories
    def index
      @categories = Category.all
  
      render json: @categories
    end
  
    # GET /categories/1/destinations
    def show
      render json: @category 
      #add status functionality here at some point
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = category.find(params[:id])
    end
end
