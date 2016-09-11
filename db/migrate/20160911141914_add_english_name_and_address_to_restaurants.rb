class AddEnglishNameAndAddressToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :english_name, :string
    add_column :restaurants, :address, :string
  end
end
