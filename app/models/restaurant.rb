class Restaurant < ActiveRecord::Base
  has_many :area_restaurants
  has_many :areas, through: :area_restaurants
  has_many :genre_restaurants
  has_many :genres, through: :genre_restaurants

  validates :name, presence: true, uniqueness: true
  validates :url,
            presence: true,
            uniqueness: true,
            format: { with: /tabelog\.com/ }

  def self.by_area(area_id)
    Area.find(area_id).restaurants
  end

  def tabelog_url
    url
  end

  def tabelog_url_en
    fail "no tabelog url" unless url
    tabelog_url.sub("tabelog.com/", "tabelog.com/en/")
  end
end
