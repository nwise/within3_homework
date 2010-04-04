# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

#  def visit_count(location)
#    location.people.count
#  end
  def require_map?
    @locations_to_mark.nil? ? false : true
  end
  def locaitons_to_mark
    
  end
end


