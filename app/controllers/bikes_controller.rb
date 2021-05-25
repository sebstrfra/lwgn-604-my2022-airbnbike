class BikesController < ApplicationController

  def show
    @bike = Bike.find(params[:id])
  end

  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user_id = current_user.id

    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end

  def bike_params
    params.require(:bike).permit(:name, :description, :category, :location, photos: [])
  end
end
