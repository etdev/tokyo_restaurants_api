class AreaRestaurant < ActiveRecord::Base
  belongs_to :area
  belongs_to :restaurant

  validates_uniqueness_of :restaurant_id, scope: :area_id

  def self.dedupe!
    grouped = all.group_by{ |obj| [obj.area_id, obj.restaurant_id] }
    grouped.values.each do |duplicates|
      first_one = duplicates.shift
      duplicates.each{ |double| double.destroy }
    end
  end
end
