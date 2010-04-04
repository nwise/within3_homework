class CheckIn < ActiveRecord::Base
  belongs_to :person
  belongs_to :location
  named_scope :default, :order => 'created_at DESC'
  named_scope :active_locations,
    :select => "person_id, location_id, MAX(created_at) AS created_at",
    :order  => "created_at DESC",
    :group  => "person_id, location_id"
end
