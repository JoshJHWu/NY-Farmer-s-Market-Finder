class SuggestedMarkets

  attr_accessor :suggested_markets
  def initialize
    @suggested_markets = []
  end

  def add_markets(raw_array)
    self.suggested_markets = []
    raw_array.each {|market| @suggested_markets << FarmersMarket.new(market)}
    @suggested_markets
  end

end
