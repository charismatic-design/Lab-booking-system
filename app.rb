require_relative "user"
require_relative "resource"
require_relative "booking"
require_relative "errors"
require_relative "booking_manager"

user1 = User.new(id: 1, name: "Mahi", role: "student")
user2 = User.new(id: 2, name: "John", role: "student")

resource1 = Resource.new(id: 1, name: "Microscope", category: "lab")

# 1. create booking
booking1 = Booking.new(user: user1, resource: resource1)
puts "Booking created"

# 2. try double booking (should fail)
begin
  Booking.new(user: user2, resource: resource1)
rescue BookingError => e
  puts "Blocked: #{e.message}"
end

# 3. cancel booking
booking1.cancel
puts "Booking cancelled"

# 4. book again (should work now)
booking2 = Booking.new(user: user2, resource: resource1)
puts "Booked again after cancel"

manager = BookingManager.new

manager.add(booking1)
manager.add(booking2)

puts "Active bookings: #{manager.active_bookings.length}"