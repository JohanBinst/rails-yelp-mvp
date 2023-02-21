class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Article.create(restaurant_params)
    restaurant.save
    redirect_to restaurants_show_path(restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
