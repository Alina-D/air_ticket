class CreateAircraft < ActiveRecord::Migration[5.1]
  def change
    create_table :aircrafts do |t|
      t.string :number


      t.timestamps
    end
  end
end