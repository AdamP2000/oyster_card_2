class OysterCard
DEFAULTBALANCE = 0
MAXBALANCE = 90
SINGLE_JOURNEY = 1
attr_reader :balance

  def initialize(balance = DEFAULTBALANCE,single_journey = SINGLE_JOURNEY)
    @balance = balance
    @in_journey = false
    @single_journey = single_journey
  end

  def top_up(top_up_value)
    @balance = @balance + top_up_value
    fail "Your balance cannot be over £#{MAXBALANCE}" if @balance > MAXBALANCE
  end

  def deduct(single_journey)
    @balance -= single_journey
  end

  def touch_in
    raise "Not enough balance" if @balance < @single_journey
    @in_journey = true
  end

  def touch_out
    @in_journey = false
    deduct(@single_journey)
  end

  def in_journey?
    @in_journey
  end



end
