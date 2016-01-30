class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.integer :place_ids, array: true

      t.timestamps
    end

    add_index :trips, :place_ids, using: 'gin'
  end
end
