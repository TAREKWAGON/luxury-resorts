class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.resort = Resort.find(params[:resort_id])
    @resort = @booking.resort
    @booking.price = @booking.resort.price
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to resort_path(Resort.find(params[:resort_id]))
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @resort = @booking.resort
    @markers = [{
      lat: @resort.latitude,
      lng: @resort.longitude
    }]
    authorize @booking
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
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :duration, :total_price, :user_id, :resort_id)
  end

end
