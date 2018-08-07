class FavoriteResortsController < ApplicationController
  before_action :set_resort, only: [:create, :destroy]
  skip_after_action :verify_authorized

  def index

    @resorts = Resort.all
  end


  def create
    if Favorite.create(favorited_id: @resort.id, user: current_user)
      redirect_to @resort
    else
      redirect_to resorts_path
    end
    # if current_page?(resorts_path)
    #   redirect_to resorts_path
    # else
    #   redirect_to resorts_path(@resort)
    # end
  end

  def destroy
    Favorite.where(favorited_id: @resort.id, user_id: current_user.id).first.destroy
    redirect_to @resort
    # if current_user
    #   redirect_to resorts_path
    # end
  end

    private

    def set_resort
      @resort = Resort.find(params[:resort_id])
    end
end
