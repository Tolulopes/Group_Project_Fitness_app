class UsersController < ApplicationController

  def index
    @users = User.all
    # @q = User.ransack(params[:q])
    # @instructors = @users.where(role: "instructor")
    @q = User.ransack(params[:q])
    # binding.pry
    @users = @q.result(distinct: true)

  end

  def show
    @user = User.find(params[:id])
    @lessons = Lesson.all
    @bookings = Booking.all
    @bookings_as_client = @bookings.where(user_id: @user.id)
    @lessons_as_instructor = @lessons.where(instructor_id: @user.id)
  end


end