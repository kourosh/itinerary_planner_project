class CreateWaypoints < ActiveRecord::Migration
  def change
    create_table :waypoints do |t|
      t.string :location
      t.string :name
      t.date :visit
      t.references :itinerary

      t.timestamps
    end
  end
end
