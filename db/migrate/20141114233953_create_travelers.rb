class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.string :first
      t.string :last
      t.string :email

      t.timestamps
    end
  end
end
