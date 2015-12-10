class Reservation < ActiveRecord::Base
  belongs_to :restaurant
  validates_presence_of :reservation_time
end
