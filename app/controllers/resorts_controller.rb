class ResortsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_resort, only: [:show, :edit, :update, :destroy]

  def index
    @resorts = if params[:country]
      Resort.where('country ILIKE ?', "%#{params[:country]}%")
    else
     @resorts = Resort.all
    end

    @resorts = Resort.where.not(latitude: nil, longitude: nil)
    @markers = @resorts.map do |resort|
      {
        lat: resort.latitude,
        lng: resort.longitude
      }
    end
  end

  def show
    @resort = Resort.find(params[:id])
    authorize @resort
    @booking = Booking.new
  end


  private

  def set_resort
    @resort.find(params[:id])
  end

  def resort_params
    params.require(:resort).permit(:name, :continent, :country, :address, :price, :description )
  end
end

