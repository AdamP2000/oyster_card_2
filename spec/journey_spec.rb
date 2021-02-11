require 'journey'

describe Journey do
  let(:journey) {Journey.new("station")}

it 'has an uncompleted journey by default' do
  expect(journey.complete?).to eq false
end

it 'has an entry station' do
  expect(journey.entry_station).to eq "station"
end

it 'has no exit station by default' do
  expect(journey.exit_station).to eq nil
end

it 'finishes the journey' do
  expect(journey.end).to eq 
end

end
