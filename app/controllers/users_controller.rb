class UsersController < ApplicationController

  def index
    @users = User.all
    @lessons = Lesson.all
    @q = User.ransack(params[:q])
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