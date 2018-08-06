class ResortsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_resort, only: [:show, :edit, :update, :destroy]

  def index
    @resorts = Resort.where.not(latitude: nil, longitude: nil)

    if params[:country].present?
     @resorts = @resorts.where('country ILIKE ?', "%#{params[:country]}%")
    end

    @markers = @resorts.map do |resort|
    {
      lat: resort.latitude,
      lng: resort.longitude
    }
    end
  end

  def show
    @booking = Booking.new
  end

  def favorite
    type = params[:type]
    if type == "favorite"
      current_user.favorites << @resort
      redirect_to :back, notice: "You favorited #{@resort.name}"

    elsif type == "unfavorite"
      current_user.favorites.delete(@resort)
      redirect_to :back, notice: "Unfavorited #{@resort.name}"

    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
  end


  private

  def set_resort
    @resort = Resort.find(params[:id])
    authorize @resort
  end

  def resort_params
    params.require(:resort).permit(:name, :continent, :country, :address, :price, :description )
  end
end

