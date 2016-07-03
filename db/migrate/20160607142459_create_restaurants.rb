class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :url, null: false
      t.integer :price_range, index: true, null: false
      t.float :rating, null: false
      t.integer :review_count, null: false
      t.string :thumbnail
      t.text :description, limit: 1000
      t.string :holiday

      t.timestamps null: false
    end
  end
end
