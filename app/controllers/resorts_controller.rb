class ResortsController < ApplicationController
  def index

  end

  def show

    @resorts = Resorts.all
  end


  def list


    # @resorts= Resort.feature.find.each do |resort|

# search for resourts that have a feature
# list all that match

    # end


  end

  def show

  end

  private

  def resort_params
    params.require(:resort).permit(:name, :continent, :country, :address, :price, :description )

  end
end
