class ResortsController < ApplicationController
  skip_before_action :authenticate_user!

  def index

  # if params[:query].present?
  #   @resorts = Resort.where("feature.name ILIKE ?", "%#{params[:query]}%")
  # else
  #   @resorts = Resort.all
  # end
    @resorts = Resort.all
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

