require 'spec_helper'

describe Consumer do
  before :each do
    @consumer = Consumer.new
  end

  it "initializes balance to 0" do
    Consumer.new.balance.should == 0
  end
  
  it "has a balance" do
    @consumer.balance = 575
    @consumer.balance.should == 575
  end

  it "has lemonades" do
    @consumer.should respond_to :lemonades
  end

  it "has lemonades initialized to 0" do
    @consumer.lemonades.should == 0
  end
end
