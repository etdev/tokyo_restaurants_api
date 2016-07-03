class CreateGenreRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :genre_restaurants do |t|
      t.belongs_to :genre, foreign_key: true, null: false
      t.belongs_to :restaurant, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
