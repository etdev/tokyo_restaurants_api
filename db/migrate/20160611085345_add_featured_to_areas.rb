class AddFeaturedToAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :featured, :boolean, after: :code, default: false, null: false
    remove_column :areas, :code, :string
    add_column :areas, :primary_code, :string, null: false
    add_column :areas, :secondary_code, :string, null: false
  end
end
