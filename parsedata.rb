module Parse

  def self.parse(zip)
    JSON.parse(open("https://data.ny.gov/resource/qq4h-8p86.json?$query=select market_name, operation_season, operation_hours, address_line_1, city, zip where zip=#{zip}").read)
  end

end
