class FavoriteResortsController < ApplicationController
  before_action :set_resort, only: [:create, :destroy]
  skip_after_action :verify_authorized

  def index

    @resorts = current_user.favorite_resorts

    @markers = @resorts.map do |resort|
    {
      lat: resort.latitude,
      lng: resort.longitude
    }
    end
  end


  def create
    current_user.favorite_resorts << @resort
    redirect_to request.referer
    # if current_page?(resorts_path)
    #   redirect_to resorts_path
    # else
    #   redirect_to resorts_path(@resort)
    # end
  end

  def destroy
    Favorite.where(favorited_id: @resort.id, user_id: current_user.id).first.destroy
    redirect_to request.referer
    # if current_user
    #   redirect_to resorts_path
    # end
  end

    private

    def set_resort
      @resort = Resort.find(params[:resort_id])
    end
end
