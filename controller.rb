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
    until @zip == 'exit' || @zip == 'quit'
      if @zip =~ /^\d{5}$/
      markets_list = @suggestedmarkets.add_markets(Parse.parse(@zip))
      @view.display_suggested_markets(markets_list)
      @view.next_instructions
      @zip = gets.strip.downcase
        unless @zip == 'quit' || @zip == 'exit'
          self.run
          @view.display_goodbye
      end
    end
  end
end

end
