class Store
  attr_accessor :balance, :price
  
  def initialize(balance=0, price=5)
    @balance, @price = balance, price
  end
end

