class ResortsController < ApplicationController
  def home
  end

  def index
  end

  def show
    @resort = Resort.find(params[:id])
  end
end
