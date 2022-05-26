class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
    @granny = User.find(params[:granny_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @granny = User.find(params[:granny_id])
    @booking.granny = @granny
    if @booking.save
      redirect_to granny_path(@granny)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
