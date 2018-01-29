class CreateAirportsRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :airports_routes do |t|
      t.integer :airport_id
      t.integer :route_id
    end
  end
end
