require 'open-uri'
require 'json'

def get_observation
  key  = ENV['WUNDERGROUND_KEY']
  url  = "http://api.wunderground.com/api/#{key}/conditions/q/CA/San_Francisco.json"
  data = open(url).read
  JSON.parse(data)['current_observation']
end

def print_observation(observation)
  puts "Temperature: #{observation.temp_f}F"
  pressure_trend = observation.pressure_trend == "-" ? "falling" : "rising"
  puts "Pressure: #{observation.pressure_mb}mb and #{pressure_trend}"
  puts "Winds: #{observation.wind_string}"
end

require 'ostruct'
observation = {
  'temp_f'         => 49.0,
  'pressure_trend' => '-',
  'pressure_mb'    => 981,
  'wind_string'    => "From the North at 3.0 MPH Gusting to 7.0 MPH"
}
os = OpenStruct.new(observation)
p os.temp_f                       # => 49.0
p os.wind_string
p os.pressure_mb

p print_observation(os)
