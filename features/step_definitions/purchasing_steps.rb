Given /^lemonade exists$/ do
end

Given /^the store has \$(\d+)$/ do |balance|
  balance = balance.to_i
  @store = Store.new balance
  @store.balance.should == balance
end

Given /^I have \$(\d+)$/ do |balance|
  balance = balance.to_i
  @consumer = Consumer.new balance
  @consumer.balance.should == balance
end

Given /^lemonade costs \$(\d+)$/ do |price|
  price = price.to_i
  @store.price == price
end

When /^I purchase (\d+) lemonade(s?)$/ do |number, dummy|
  number = number.to_i
  LemonadeStand.make_purchase @consumer, @store, number
end

Then /^I should have \$(\d+)$/ do |price|
  price = price.to_i
  @consumer.balance.should == price
end

Then /^the store should have \$(\d+)$/ do |balance|
  balance = balance.to_i
  @store.balance.should == balance
end

Then /^I should have (\d+) lemonade$/ do |drinks|
  drinks = drinks.to_i
  @consumer.lemonades.should == drinks
end

