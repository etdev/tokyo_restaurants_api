namespace :import do
  task :areas => :environment do
    Importers::AreaImporter.new.fetch
  end

  task :genres => :environment do
    Importers::GenreImporter.new.fetch
  end

  task :restaurants => :environment do
    areas = Area.featured
    areas.each do |area|
      begin
        puts "-- Checking #{area.name}"
        sleep([1, 1, 1, 2, 2, 3].sample)
        Importers::RestaurantImporter.new(area).fetch
      rescue => e
        puts "Failed: #{e.message}"
        next
      end
    end
  end

  task :featured_areas => :environment do
    Importers::FeaturedAreaImporter.new.fetch
  end
end
