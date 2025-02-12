# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

airports = [
  { code: 'SFO' },
  { code: 'LAX' },
  { code: 'ORD' },
  { code: 'NYC' }
]
airports.each do |airport|
  Airport.create!(airport)
end

sfo = Airport.find_by(code: 'SFO')
nyc = Airport.find_by(code: 'NYC')
lax = Airport.find_by(code: 'LAX')
ord = Airport.find_by(code: 'ORD')

flights = [
  {
    departure_airport: sfo,
    arrival_airport: nyc,
    start_date: Date.today,
    flight_duration: 320
  },
  {
    departure_airport: nyc,
    arrival_airport: lax,
    start_date: Date.today,
    flight_duration: 380
  },
  {
    departure_airport: lax,
    arrival_airport: ord,
    start_date: Date.tomorrow,
    flight_duration: 240
  }
]

flights.each do |flight|
  Flight.create!(flight)
end
