class DataParser
  def self.parse_weather_data
    data = IO.readlines('lib/weather.dat')[2..-1]
    output_data = []
    data.each_with_index { |val, index|
      if index < (data.length-1)
        output_data << val.split.map(&:to_i)
      end
    }

    output_data
  end

  def self.parse_football_data
    # code here
  end
end