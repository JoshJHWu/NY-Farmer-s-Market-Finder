class View

  def display_welcome
    puts "\n\n\n"
    puts "Welcome to Farmer's Market Finder"
  end

  def display_instructions
    puts "Please enter your zip code:"
  end

  def colorize(text, color_code)
    print "\e[#{color_code}m#{text}\e[0m"
  end

  def red(text)
    colorize(text,31)
  end

  def display_apple
    system "clear"
    return "
                                   ___
                                _/`.-'`.
                      _      _/` .  _.'
             ..:::::.(_)   /` _.'_./
           .oooooooooooooooooo# #o/.-'__.'o.
          .ooooooooooooooooo`._#_|_.'`oooooob.
        .ooooooooooooooooooooooooooooo&&oooooob.
       .oooooooooooooooooooooooooooo&@@@@@@oooob.
      .ooooooooooooooooooooooooooooooo&&@@@@@ooob.
      doooooooooooooooooooooooooooooooooo&@@@@ooob
      doooooooooooooooooooooooooooooooooo&@@@oooob
      dooooooooooooooooooooooooooooooooo&@@@ooooob
      dooooooooooooooooooooooooooooooooo&@@oooooob
      `dooooooooooooooooooooooooooooooooo&@ooooob'
       `doooooooooooooooooooooooooooooooooooooob'
        `doooooooooooooooooooooooooooooooooooob'
         `doooooooooooooooooooooooooooooooooob'
          `doooooooooooooooooooooooooooooooob'
           `doooooooooooooooooooooooooooooob'
            `dooooooooobodoooooooooooooooob'
             `doooooooob dooooooooooooooob'
               `------------^-----------'"

  end


  def display_list_markets_title
    puts "Here are the markets in your zip code:"
  end

  def display_suggested_markets(suggested_markets)
    if suggested_markets.empty?
      puts "Sorry, no markets in your zip code, try another!"
    else
      display_list_markets_title
      puts "\n"
      suggested_markets.each_with_index do |market,idx|
        puts "#{idx+1}. " + market.market_name
        puts "   - Address: " + market.address_line_1 + ", " + market.city + ", NY " + market.zip
        puts "   - Availability: " + market.operation_season + " on " + market.operation_hours
        puts "\n"
      end
    end
  end


end
