class ResortsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @resorts = if params[:country]
    Resort.where('country ILIKE ?', "%#{params[:country]}%")
  else
    @resorts = Resort.all
  end
end

  def show
    @resort = Resort.find(params[:id])
    authorize @resort
    @booking = Booking.new
  end


  private

  def resort_params
    params.require(:resort).permit(:name, :continent, :country, :address, :price, :description )

  end
end

