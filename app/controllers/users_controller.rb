class UsersController < ApplicationController
  def show
    @booking = Booking.new
    @bookings = Booking.all
    @user_bookings = @bookings.where(user: current_user)
  end
end
