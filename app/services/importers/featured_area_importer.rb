require "nokogiri"
require "open-uri"

class Importers::FeaturedAreaImporter
  FEATURED_AREAS_PATH = Rails.root.join("resources", "featured_areas.yml")

  def initialize
  end

  def fetch
    # get featured_areas_attr_arr
    featured_areas_attr_arr = load_featured_areas
    featured_areas_attr_arr.each do |area_name, attrs|
      area = Area.find_by(name: area_name)
      begin
        area.update!(attrs) if area.present?
      rescue => e
        puts "Failed to update featured area: #{e.message}"
      end
    end
  end

  private

  def load_featured_areas
    @_featured_areas_attr_arr = YAML.load_file(FEATURED_AREAS_PATH)
  rescue => e
    puts "Failed: #{e.message}"
    abort
  end
end
