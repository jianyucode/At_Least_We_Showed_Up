class PlacesController < ApplicationController
  before_action :set_place, only:[:show, :edit, :update, :destroy]
  before_action :set_adventure

  def index
    @places = @adventure.places.all
  end

  def show
  end

  def new
    @place = @adventure.places.new
  end

  def create
    @place = @adventure.places.new(place_params)
    if @place.save
      redirect_to adventure_path(@adventure)
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @place.update(place_params)
      redirect_to adventure_path(@adventure)
    else
      render :edit
    end
  end

  def destroy
    @place.destroy
    redirect_to adventure_path(@adventure)
  end

  private
    def set_place
      @place = Place.find(params[:id])
    end

    def set_adventure
      @adventure = Adventure.find(params[:adventure_id])
    end

    def place_params
      params.require(:place).permit(:name, :adventure_id)
    end
end
