class AddEnglishNameAndThumbnailToAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :english_name, :string, index: true
    add_column :areas, :thumbnail, :string
  end
end
