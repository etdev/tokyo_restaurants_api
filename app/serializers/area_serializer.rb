class AreaSerializer < ActiveModel::Serializer
  #has_many :restaurants, serializer: RestaurantSerializer

  attributes :id, :name, :english_name, :thumbnail, :restaurants_count
end
