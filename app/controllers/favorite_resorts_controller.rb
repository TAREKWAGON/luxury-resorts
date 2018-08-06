class FavoriteResortsController < ApplicationController
  before_action :set_resort
  skip_after_action :verify_authorized

  def create
    Favorite.create(favorited: @resort, user: current_user)
    redirect_to @resort
  end

  def destroy
    Favorite.where(favorited_id: @resort.id, user_id: current_user.id).first.destroy
    redirect_to @resort
  end

  private

  def set_resort
    @resort = Resort.find(params[:resort_id])
  end
end
