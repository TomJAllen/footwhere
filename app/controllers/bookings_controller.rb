require "date"

class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @shoe = Shoe.find(params[:shoe_id])
  end

  def create
    @booking = Booking.create(duration: booking_duration, date: booking_date, user_id: 1)
    # user_id needs to be changed once user functionality is implemented
    @booking.shoe = Shoe.find(params[:shoe_id])
    if @booking.save
      redirect_to shoes_path
    # This path should be changed once user functionality is implemented
    else
      render :new
    end
  end

  private

  def booking_duration
    duration = params.require(:booking).permit(:duration)
    duration["duration"].to_i
  end

  def booking_date
    year = params.require(:booking).permit("date(1i)")
    month = params.require(:booking).permit("date(2i)")
    day = params.require(:booking).permit("date(3i)")
    date = Date.new(year["date(1i)"].to_i, month["date(2i)"].to_i, day["date(3i)"].to_i)
  end

end
