class PlacesController < ApplicationController

  def index
    @places = Place.paginate(:page => params[:page], :per_page => 8)
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.create!(place_params)
    redirect_to @place
  end

  def show
    @place = Place.find_by_id(params[:id])
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end
