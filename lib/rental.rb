# -*- coding: utf-8 -*-
class Rental
  attr_reader :movie, :days_rented
  def initialize(movie, days_rented)
    @movie, @days_rented = movie, days_rented
  end

  def charge
    movie.charge(days_rented)
  end

  def frequent_renter_points
    # レンタルポイントを加算
    result = 0
    result += 1
    # 新作2日間レンタルでボーナスポイントを加算
    if movie.price_code == Movie::NEW_RELEASE && days_rented > 1
      result += 1
    end
    result
  end
  
end
