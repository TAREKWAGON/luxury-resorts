class FavoriteResortsController < ApplicationController
  before_action :set_resort
  skip_after_action :verify_authorized


  def create
    Favorite.create(favorited: @resort, user: current_user)
    redirect_back(fallback_location: "")
    # if current_page?(resorts_path)
    #   redirect_to resorts_path
    # else
    #   redirect_to resorts_path(@resort)
    # end
  end

  def destroy
    Favorite.where(favorited_id: @resort.id, user_id: current_user.id).first.destroy
    redirect_back(fallback_location: "")
    # if current_user
    #   redirect_to resorts_path
    # end
  end

    private

    def set_resort
      @resort = Resort.find(params[:resort_id])
    end
end