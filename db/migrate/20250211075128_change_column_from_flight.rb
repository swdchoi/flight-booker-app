class ChangeColumnFromFlight < ActiveRecord::Migration[8.0]
  def change
    rename_column(:flights, :flight_duation, :flight_duration)
  end
end
