class ResortsController < ApplicationController
  skip_before_action :authenticate_user!

  def index

  end

  def show
    @resorts = Resorts.all
  end

  private

  def resort_params
    params.require(:resort).permit(:name, :continent, :country, :address, :price, :description )

  end
end
