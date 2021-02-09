class OysterCard
DEFAULTBALANCE = 0
MAXBALANCE = 90

attr_reader :balance

  def initialize(balance = DEFAULTBALANCE)
    @balance = balance
    @in_journey = false
  end

  def top_up(top_up_value)
    @balance = @balance + top_up_value
    fail "Your balance cannot be over £#{MAXBALANCE}" if @balance > MAXBALANCE
  end

  def deduct(money_spent)
    @balance -= money_spent
  end

  def touch_in
    @in_journey = true
  end

  def in_journey?
    @in_journey
  end

end
