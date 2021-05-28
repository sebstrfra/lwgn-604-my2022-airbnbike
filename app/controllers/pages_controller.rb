class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @bikes = Bike.where(user_id: current_user.id)  # would work with just "user"?
    @bookings = Booking.where(user_id: current_user.id).order(:start_date)
  end

end
