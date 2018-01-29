class AddPositionToAirportsRoutes < ActiveRecord::Migration[5.1]
  def change
    add_column :airports_routes, :position, :integer
  end
end
