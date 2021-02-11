require 'station'

describe Station do

  let(:station) {Station.new(1, "Clapham Station")}

  it "should have a name" do
    expect(station.name).to eq "Clapham Station"
  end
  it "should have a zone" do
  expect(station.zone).to eq 1
  end
end
