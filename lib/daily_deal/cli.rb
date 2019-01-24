#our CLI controller
class DailyDeal::CLI

  def call
    puts "Today's Daily Deals:"
    list_deals
  end

  def list_deals
    puts <<-DOC.gsub /^\s*/, ""
    1. Under Armour Men's Golf Apparel  $24.99 - 36.99 - available
    2. 4-Pack: Deluxe Atomic Lighter Rechargeable Plasma Beam Lighters 4 for $18 - available
    DOC
  end

end
