class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :title
      t.integer :economy_seats
      t.integer :comfort_seats
      t.integer :business_seats
      t.belongs_to :aircraft
      t.string :type

      t.timestamps
    end
  end
end
