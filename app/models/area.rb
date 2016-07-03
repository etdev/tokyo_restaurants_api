class Area < ActiveRecord::Base
  has_many :area_restaurants, dependent: :destroy
  has_many :restaurants, through: :area_restaurants

  validates :name, presence: true
  validates :primary_code, presence: true, format: { with: /\AA\d+\z/ }
  validates :secondary_code, presence: true, format: { with: /\AA\d+\z/ }

  def self.featured
    where(featured: true)
  end
end
