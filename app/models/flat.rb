class Flat < ActiveRecord::Base
  belongs_to :owner, :class_name => "User"
  has_many :bookings

  geocoded_by :address
  
  after_validation :geocode, if: :address_changed?

end
