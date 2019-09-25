class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :origin
      t.integer :destination
      t.integer :bike_id

      t.timestamps
    end
  end
end
