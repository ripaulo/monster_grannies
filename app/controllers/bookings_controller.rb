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
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
