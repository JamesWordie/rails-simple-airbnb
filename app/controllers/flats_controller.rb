class FlatsController < ApplicationController
  before_action :find_flat, only: %i[create show destroy]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(strong_params)
  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def strong_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
