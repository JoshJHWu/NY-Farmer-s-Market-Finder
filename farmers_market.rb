class FarmersMarket

  attr_reader :market_name, :zip, :operation_hours, :address_line_1, :operation_season, :city
  def initialize(args = {})
    @market_name = args["market_name"]
    @zip = args["zip"]
    @operation_hours = args["operation_hours"]
    @address_line_1 = args["address_line_1"]
    @operation_season = args["operation_season"]
    @city = args["city"]
  end


end
