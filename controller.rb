class Controller

  attr_accessor :zip
  def initialize
    @suggestedmarkets = SuggestedMarkets.new
    @view = View.new
    self.run
  end

  def run
    @view.red(@view.display_apple)
    @view.display_welcome
    @view.display_instructions
    @zip = gets.strip
    markets_list = @suggestedmarkets.add_markets(Parse.parse(@zip))
    @view.display_suggested_markets(markets_list)
  end


end
