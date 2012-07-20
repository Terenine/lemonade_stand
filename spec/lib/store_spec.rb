require 'spec_helper'

describe Store do
  before :each do
    @store = Store.new
  end

  it "initializes with a balance of 0" do
    @store.balance.should == 0
  end

  it "has a balance" do
    @store.balance = 50
    @store.balance.should == 50
  end

  it "has a price of $5" do
    @store.price = 5
    @store.price.should == 5
  end
end
