class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.references :restaurant, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :price_per_day

      t.timestamps
    end
  end
end
