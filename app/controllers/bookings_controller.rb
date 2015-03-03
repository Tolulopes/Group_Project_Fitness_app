class BookingsController < ActionController::Base

  def index
    @bookings = Booking.all
    respond_to do |format|
      format.html
      format.json { render json: @bookings }
    end
  end

  def create
    binding.pry
    puts :status
    puts :user_id
    @booking = Booking.create(booking_params)
    render json: @booking, status: :created
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update params.require(:task).permid(:done)
    head :no_content, status: :ok
  end

  private
  def booking_params
    params.require(:booking).permit(:user_id, :lesson_id, :status)
  end

end