class AdventuresController < ApplicationController
  before_action :set_adventure, only: [:show, :edit, :update, :destroy]

  def index
    @adventures = Adventure.all

  end

  def show
  end


  def new
    @adventure = Adventure.new
  end

  def create
    @adventure = Adventure.new(adventure_params)
    if @adventure.save
      redirect_to adventures_path
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @adventure = Adventure.update(adventure_params)
    redirect_to adventures_path
  else
    render :edit
  end
  end

def destroy
  @adventure.destroy
redirect_to adventures_path
end

private
def set_adventure
  @adventure = Adventure.find(params[:id])
end

def adventure_params
  params.require(:adventure).permit(:name)
end

end
