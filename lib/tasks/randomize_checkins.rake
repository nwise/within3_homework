desc "Run this to randomly checkin people at locations."

task :randomize_checkins => :environment do
  CheckIn.destroy_all
  locations = Location.all
  people = Person.all
  people.each do |person|
    num_locations = rand(35)
    for i in (1..num_locations)
      loc_index = rand(locations.size)
      location = locations[loc_index]
      puts "Adding #{person.name} to #{location.name}"
      person.locations << location
      sleep 0.2
    end
  end
end