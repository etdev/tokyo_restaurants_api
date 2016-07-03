class AddRestaurantsCountToAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :restaurants_count, :integer, null: false, default: 0
  end
end
