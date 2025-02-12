class Booking < ApplicationRecord
  belongs_to :flight, class_name: "Flight"
  has_many :passengers, class_name: "Passenger"
  accepts_nested_attributes_for :passengers, allow_destroy: true
end
