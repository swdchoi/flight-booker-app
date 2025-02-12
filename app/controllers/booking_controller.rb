class BookingController < ApplicationController
  def new
    @chosen = Flight.find(params[:flight])
    @people = params[:passengers]
    @booking = Booking.new
    @people.to_i.times { @booking.passengers.build }
  end

  def index
    @booking = Booking.all.first
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to index_path
    else
      redirect_to root_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [ :name, :email ])
  end
end
