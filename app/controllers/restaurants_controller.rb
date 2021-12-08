class RestaurantsController < ApplicationController
   before_action :set_restaurant, only: %i[ show edit update destroy ]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
       redirect_to @restaurant
      else
        render :new
      end
  end

  # PATCH/PUT /restaurants/1 or /restaurants/1.json
  def update
    @restaurant.update(restaurant_params)
      if @restaurant.save
        redirect_to @restaurant
      else
        render :edit
      end
  end

  # DELETE /restaurants/1 or /restaurants/1.json
  def destroy
    @restaurant.destroy
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
