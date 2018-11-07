class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:index, :new, :create]
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    # @reviews = Review.all
    @reviews = Review.where(restaurant_id: @restaurant.id)
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    # finding the restaurant for the review
    # @restaurant = Restaurant.find(params[:id])
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
