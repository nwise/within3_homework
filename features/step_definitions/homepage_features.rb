Given /^there are people at locations$/ do
  Fixtures.reset_cache

  #TODO move these then to rspec
  fixtures_folder = File.join(RAILS_ROOT, 'db', 'data')
  fixtures = Dir[File.join(fixtures_folder, '*.yml')].map {|f| File.basename(f, '.yml') }
  Fixtures.create_fixtures(fixtures_folder, fixtures)
end

Then /^I should see a list of active members$/ do
  response.should have_selector("div#member-activity-list", :count => 1)
end

Then /^I should see a list of active locations$/ do
  response.should have_selector("div#location-activity-list", :count => 1)
end
