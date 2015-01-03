# -*- coding: utf-8 -*-
class Movie
  REGULAR     = 0
  NEW_RELEASE = 1
  CHILDRENS   = 2

  attr_reader :title
  attr_accessor :price_code

  def initialize(title, price_code)
    @title, @price_code = title, price_code    
  end

  def charge(days_rented)
    result = 0
    # 各行の金額を計算
    case price_code
    when Movie::REGULAR
      result += 2
      result += (days_rented - 2)
    when Movie::NEW_RELEASE
      result += days_rented * 3
    when Movie::CHILDRENS
      result += 1.5
      result += (days_rented - 3) * 1.5 if days_rented > 3
    end
  end

  def frequent_renter_points(days_rented)
    # レンタルポイントを加算
    result = 0
    result += 1
    # 新作2日間レンタルでボーナスポイントを加算
    if price_code == Movie::NEW_RELEASE && days_rented > 1
      result += 1
    end
    result
  end
  
end
