class AddLatLngToLocations < ActiveRecord::Migration
  def self.up
    add_column :locations, :lat, :float
    add_column :locations, :lng, :float

    Location.all.each do |location|
      geocode = Geokit::Geocoders::GoogleGeocoder.geocode(location.address)
      location.update_attributes(:lat => geocode.lat, :lng => geocode.lng)
    end

  end

  def self.down
    remove_column :locations, :lng
    remove_column :locations, :lat
  end
end
