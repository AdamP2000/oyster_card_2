require_relative 'station'


class Journey
attr_reader :entry_station, :exit_station

def initialize(entry_station)
@entry_station = entry_station
@exit_station = nil
end

def complete?
  false
end

end
