class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.resort = @booking.find(resort_id)
    @booking.save
  end

  def show
    @booking = current_user.booking(params[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
  end

  private

  def booking_params
    params.require(:booking).permit()
  end

end
