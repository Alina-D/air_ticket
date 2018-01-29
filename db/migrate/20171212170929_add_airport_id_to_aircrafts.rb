class AddAirportIdToAircrafts < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :aircrafts, :current_airport
  end
end
