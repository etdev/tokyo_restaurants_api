class Restaurant < ActiveRecord::Base
  has_many :area_restaurants
  has_many :areas, through: :area_restaurants
  has_many :genre_restaurants
  has_many :genres, through: :genre_restaurants

  validates :name, presence: true, uniqueness: true

  def self.by_area(area_id)
    Area.find(area_id).restaurants
  end
end
