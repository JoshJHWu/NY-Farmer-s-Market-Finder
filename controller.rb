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
    if @zip =~ /^\d{5}$/
      markets_list = @suggestedmarkets.add_markets(Parse.parse(@zip))
      @view.display_suggested_markets(markets_list)
      @view.next_instructions
      input = gets.strip.downcase
      if input == 'exit' || input == 'quit'
        @view.display_goodbye
      else
        self.run
      end
    else
      self.run
    end
  end


end
