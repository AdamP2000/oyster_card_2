require 'oystercard'

describe OysterCard do
 test_value = 50


 before(:each) do
     @oystercard = OysterCard.new
   end

 describe '#top_up' do

  it "has a default balance of 0 when initialized" do
    expect(@oystercard.balance).to eq(0)
  end
 it "tops up with the top up value as the argument" do
   @oystercard.top_up(test_value)
   expect(@oystercard.balance).to eq test_value
 end
 it "raises an error when top up value exceeds maximum value" do
   expect { @oystercard.top_up(91) }.to raise_error "Your balance cannot be over £90"
 end
end

describe '#deduct' do
 it "deducts money from balance when you spend money" do
   @oystercard.top_up(test_value)
   @oystercard.deduct(test_value)
   expect(@oystercard.balance).to eq 0
 end
end

describe '#touch_in' do
  it "says you're in a journey when you touch in but don't touch out" do
  @oystercard.touch_in
  expect(@oystercard.in_journey?).to eq true
  end
end

end
