class ResortsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  if params[:query].present?
     sql_query = "country ILIKE :query OR continent ILIKE :query"
    @resorts = Resort.where(sql_query, query: "%#{params[:query]}%")
  else
    @resorts = Resort.all
  end
end

  def show
    @resorts = Resort.all
  end

  private

  def resort_params
    params.require(:resort).permit(:name, :continent, :country, :address, :price, :description )

  end
end
