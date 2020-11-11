class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [ :show ]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/n
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: 'Restaurant created.'
    else
      render :new
    end
  end

  private
  # common function to set the id
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only trusted parameters
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
