class Rental
  attr_reader :movie, :day_rented
  def initialize(movie, days_rented)
    @movie, @days_rented = movie, days_rented
  end
end
