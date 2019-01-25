#our CLI controller
class DailyDeal::CLI

  def call
    list_deals
    menu
    goodbye
  end

  def list_deals
    @deals = DailyDeal::Deal.today
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the numer of the deal you'd like more info!!"
      input = gets.chomp.downcase

      if input.to_i > 0
        puts @deals[input.to_i-1]
      elsif input == "list"
        list_deals
      elsif
        puts "Not sure what you want, tyle list or exit"
      elsif input == "exit"
        goodbye
      end

    end
  end

  def goodbye
    puts "See you tomorrow!!"
  end

end
