class Customer
  attr_reader :name
  def initialize(name)
    @name = name
    @rentals = []

    def add_rental(arg)
      @rentals << arg
    end
  end
end
