class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    # finding the restaurant for the review
    # @restaurant = Restaurant.find(params[:id])
    @review.restaurant = @restaurant

    @review = Review.create(review_params)
    if @review.save
      redirect_to review_path(@review)
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
    @restaurant = Restaurant.find(params[:id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_parms
    params.require(:review).permit(:content, :rating)
  end
end
