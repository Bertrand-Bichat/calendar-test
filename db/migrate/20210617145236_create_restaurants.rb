class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
