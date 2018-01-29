class AddAircraftIdToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :places, :aircraft
  end
end
