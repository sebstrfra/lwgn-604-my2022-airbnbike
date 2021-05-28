class BikesController < ApplicationController

  def show
    @bike = Bike.find(params[:id])

    @photos = @bike.photos
    if @bike.photos.size < 4
      until @photos.size == 4
        @photos << @bike.photos.sample
      end
    elsif @bike.photos.size > 4
      @photos = @bike.photos.sample(4)
    else
      @photos = @bike.photos
    end

    @booking = Booking.new

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
