class Api::V1::CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

    # GET /categories
    def index
      if logged_in?
        @categories = Category.all
        render json: CategorySerializer.new(@categories)
      else
        render json: {
          error: "You Are Currently Not Logged In"
        }
      end
    end
  
    # GET /categories/1/categories
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
