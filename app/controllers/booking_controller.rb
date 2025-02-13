class BookingController < ApplicationController
  def new
    @chosen = Flight.find(params[:flight])
    @people = params[:passengers]
    @booking = Booking.new
    @people.to_i.times { @booking.passengers.build }
  end

  def index
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to root_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [ :name, :email ])
  end
end
