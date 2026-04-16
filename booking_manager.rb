class BookingManager
  def initialize
    @bookings = []
  end

  def add(booking)
    @bookings << booking
  end

  def active_bookings
    @bookings.select { |b| b.status == "active" }
  end

  def all_bookings
    @bookings
  end
end