class ChangeColumnFromFlightId < ActiveRecord::Migration[8.0]
  def change
    rename_column(:flights, :departure_airport, :departure_airport_id)
    rename_column(:flights, :arrival_airport, :arrival_airport_id)
  end
end
