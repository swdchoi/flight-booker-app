class FlightsController < ApplicationController
  def search
      @info = Flight.where(departure_airport_id: params[:departure_airport], arrival_airport_id: params[:arrival_airport], start_date: params[:start_date])
      @people = params[:passenger]
      @airports_options = Airport.all.map { |u| [ u.code, u.id ] }
      @airports_options2 = @airports_options.reverse
      a = Flight.all.map { |u| [ u.start_date ] }
      @date_options = a.uniq
  end
end
