class BookingsController < ApplicationController

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.bike = @bike
    @booking.user = current_user  # available through Devise
    if @booking.save
      redirect_to dashboard_path # dashboard not yet created
    else
      render :new
    end
  end


private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)  # :price :status to be added, once model has been updated
  end

end




