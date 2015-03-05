class LessonsController < ApplicationController

  def index
    @q = Lesson.ransack(params[:q])
    @lessons = @q.result(distinct: true)
  end

  def show
    @lesson = Lesson.find(params[:id])
    @user = current_user

    unless @user.nil?
      @booking = @user.bookings.where(lesson_id: @lesson.id)
    end

    if @booking.nil? || @booking.empty?
      @spaces_left = @lesson.capacity
    else
      @status = @booking.first.status
      @spaces_left = @lesson.capacity-@lesson.bookings.length
    end
    if @spaces_left.nil? == false && @spaces_left > 0
      @lesson_has_space = true
    end

    @booking = @user.bookings.where(lesson_id: @lesson.id)
    @no_booking = @booking.empty?
    if @no_booking
      nil
    else
      @status = @booking.first.status
    end
    @space_left = @lesson.capacity-@lesson.bookings.length
  end

  def new
    @lesson = Lesson.new
    @categories = Category.all
  end

  def create
    @lesson = Lesson.create(lesson_params)
    @lesson.instructor_id = current_user.id
    @lesson.save
    redirect_to lessons_path
  end

  def edit
    @lesson = Lesson.find(params[:id])
    @categories = Category.all
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
    redirect_to lessons_path
  end


  private
  def lesson_params
    params.require(:lesson).permit(:title, :description, :category_id, :capacity, :start_time, :end_time, :date)
  end
end