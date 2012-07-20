require 'spec_helper'

describe LemonadeStand do
  it "can make a purchase" do
    LemonadeStand.should respond_to :make_purchase
  end

  describe ".make_purchase" do
    before :each do
      @consumer = Consumer.new 100
      @store = Store.new 100
    end
  
    it "debits consumer balance" do
      expect { LemonadeStand.make_purchase @consumer, @store, 1 }.to change(@consumer, :balance).by(-5)
    end

    it "credits store balance" do
      expect { LemonadeStand.make_purchase @consumer, @store, 1 }.to change(@store, :balance).by(5)
    end

    it "credits lemonade balance" do
      expect { LemonadeStand.make_purchase @consumer, @store, 1 }.to change(@consumer, :lemonades).by(1)
    end
  end
end




