class ResortsController < ApplicationController
  def home
  end

  def index


  end


  def show

  end

  private

  def resort_params
    params.require(:resort).permit(:name, :continent, :country, :address, :price, :description )
  end
end
