require 'journey'

describe Journey do

it 'has an uncompleted journey by default' do
  expect(Journey.new.complete?).to eq false
end

end
