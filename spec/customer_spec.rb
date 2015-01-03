require 'spec_helper'

describe Customer do
  
  describe :statement do
    before :each do
      @customer = Customer.new('hiromitsu ito')
      rental_1 = Rental.new(Movie.new('the walking dead',0),5)
      rental_2 = Rental.new(Movie.new('breaking bad',1),2)
      rental_3 = Rental.new(Movie.new('frozen',2),5)
      @customer.add_rental(rental_1)
      @customer.add_rental(rental_2)
      @customer.add_rental(rental_3)
    end
    
    context "plain text" do
      it "" do
        expect(@customer.statement).to eq "Rental Record for hiromitsu ito\n\tthe walking dead\t5\n\tbreaking bad\t6\n\tfrozen\t4.5\nAmount owed is 15.5\nYou earned 4 frequent renter points"
      end
    end

    context "html" do
      it "" do
        expect(@customer.html_statement).to eq "<h1>Rental Record for <em>hiromitsu ito</em></h1><p>\n\tthe walking dead\t5<br/>\n\tbreaking bad\t6<br/>\n\tfrozen\t4.5<br/>\n<p>You owe <em>15.5</em></p>\nOn this rental you earned <em>4</em> frequent renter points</p>"
      end
    end
    
  end
end      
