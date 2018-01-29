class CreateAircraftsRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :aircrafts_routes do |t|
      t.integer :aircraft_id
      t.integer :route_id
    end
  end
end
