class ReviewsController < ApplicationController
  def index
    @reviews = Review.order("RANDOM()").limit(5)
  end

  def show
    @review = Review.find(params[:id])
    @user = current_user
  end

  def new
    @review = Review.new
    @lessons = Lesson.all
  end

  def create
    @review = Review.create(review_params)
    @review.user_id = current_user.id
    @review.save
    redirect_to reviews_path
  end

  def edit
    @review = review.find(params[:id])
    @categories = Lesson.all
  end

  def update
    @review = review.find(params[:id])
    @review.update(review_params)
    redirect_to reviews_path
  end


  private
  def review_params
    params.require(:review).permit(:rating, :comment, :lesson_id, :capacity)
  end
end