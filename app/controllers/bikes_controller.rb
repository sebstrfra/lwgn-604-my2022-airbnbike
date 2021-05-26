class BikesController < ApplicationController

  def show
    @bike = Bike.find(params[:id])
  end

  def index
    @bikes = Bike.all
  end
end
