class ReviewsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

end