class GenreRestaurant < ActiveRecord::Base
  belongs_to :genre
  belongs_to :restaurant
end
