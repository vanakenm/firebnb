class Booking < ActiveRecord::Base
  belongs_to :guest, class_name: "User"
  belongs_to :flat
end
