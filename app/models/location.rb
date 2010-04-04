class Location < ActiveRecord::Base
  has_many :check_ins
  has_many :people, :through => :check_ins

  acts_as_mappable :auto_geocode => true
  
  def current_visitors
    people.select { |person| person.current_location == self }.uniq
  end

  def people_by_frequency
    people.find(:all,
                :select => "COUNT(people.id) as count, people.name, people.id,
                            people.image_file_name, people.image_file_size, people.image_content_type",
                :group  => "people.id, people.name, people.image_file_name, people.image_file_size, people.image_content_type",
                :order  => "count DESC")
  end

  def active?
    current_visitors.size > 0
  end  
end

