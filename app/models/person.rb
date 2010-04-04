class Person < ActiveRecord::Base  
  has_many :check_ins
  has_many :locations, :through => :check_ins  
  has_attached_file :image,
    :default_url => '/images/default_:style.jpg',
    :styles => {
      :thumb  => '50x50>',
      :normal => '150x150>'
  }

  validates_presence_of :name
  
  named_scope :with_current_location,
    :include => :check_ins,
    :conditions => 'check_ins.id IS NOT NULL'

  def current_location    
    check_ins.size == 0 ? [] : check_ins.last.location
  end

  def locations_by_frequency
    #Model.count won't deliver what I want, resorting to find w/ sql COUNT
    locations.find(:all,
                   :select => "COUNT(locations.id) AS times, locations.name, locations.id",
                   :group  => "locations.id, locations.name",
                   :order  => "times DESC")
  end

  private
  def update_current_location
    self.current_location = check_ins.last.location unless check_ins.size == 0
  end
end
