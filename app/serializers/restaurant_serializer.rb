class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :rating, :price_range, :thumbnail, :genres

  def genres
    object.genres.map(&:name).uniq.join("、")
  end
end
