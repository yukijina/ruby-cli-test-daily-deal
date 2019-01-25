#our CLI controller
class DailyDeal::CLI

  def call
    list_deals
    menu
  end

  def list_deals
    puts "Today's deal: "
    @deals = DailyDeal::Deal.today
    @deals.each.with_index(1) do |deal, index|
      puts "#{index}. #{deal.name} - #{deal.price} - #{deal.availability}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the numer of the deal you'd like more info!!"
      input = gets.chomp.downcase

      if input.to_i > 0
        puts @deals[input.to_i-1].name
      elsif input == "list"
        list_deals
      elsif input == "exit"
        goodbye
      else
        puts "Not sure what you want, tyle list or exit"
      end

    end
  end

  def goodbye
    puts "See you tomorrow!!"
  end

end
