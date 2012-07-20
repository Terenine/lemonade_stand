class LemonadeStand
  def self.make_purchase(consumer, store, quantity)
    amount = quantity * store.price 
    consumer.balance -= amount
    store.balance += amount
    consumer.lemonades += quantity
  end
end
