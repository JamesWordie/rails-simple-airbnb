class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(strong_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    @flat.update(strong_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to root_path
  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def strong_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
