class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :origin
      t.string :destination
      t.string :name
      t.date :dep_date
      t.date :ret_date

      t.timestamps
    end
  end
end
