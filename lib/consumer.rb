class Consumer
  attr_accessor :balance
  attr_writer :lemonades

  def initialize(balance=0)
    @balance = balance
  end

  # lazily initialize lemonades, because for a completely made-up
  # reason, initializing lemonades takes a long time and we want to
  # defer it to the last possible moment.
  def lemonades
    @lemonades ||= 0
  end
end


