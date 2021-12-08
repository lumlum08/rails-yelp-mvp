class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(params_review)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @restaurant = @review.restaurant # -> Je récupère le restaurant avant de supprimer la review
    @review.destroy
    redirect_to restaurant_path(@restaurant)
  end

  private

  def params_review
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
end
