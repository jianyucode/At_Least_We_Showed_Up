class AddressesController < ApplicationController
  before_action :set_address, only: [:edit, :show, :update, :destroy]
  before_action :set_place

  def index
    @address = @place.addresses.all
  end

  def show
  end


  def new
    @address = @place.addresses.new
  end

  def create
    @address = @place.addresses.new(address_params)
    if @address.save
      redirect_to adventure_place_path(@place.adventure, @place)
    else
      render:new
    end
  end

  def edit
  end

  def update

    if @address.update(address_params)
      redirect_to adventure_place_path(@place.adventure, @place)
    else
      render :edit
    end
  end

  def destroy
    @address.destroy
    redirect_to adventure_place_path(@place.adventure, @place)
  end

  private

  def set_address
    @address = Address.find(params[:id])
  end

  def set_place
    @place = Place.find(params[:place_id])
  end

  def address_params
    params.require(:address).permit(:long, :lat, :place_id)

  end

end
