class SuggestedMarkets

  attr_reader :suggested_markets
  def initialize
    @suggested_markets = []
  end

  def add_markets(raw_array)
    raw_array.each {|market| @suggested_markets << FarmersMarket.new(market)}
    @suggested_markets
  end

end
