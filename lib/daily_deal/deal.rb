class DailyDeal::Deal
  attr_accessor :name, :price, :availability

  def self.today
    # puts <<-DOC.gsub /^\s*/, ""
    # 1. Under Armour Men's Golf Apparel  $24.99 - 36.99 - available
    # 2. 4-Pack: Deluxe Atomic Lighter Rechargeable Plasma Beam Lighters 4 for $18 - available
    # DOC

    deal_1 = self.new
    deal_1.name = "Under Armour Men's Golf Apparel"
    deal_1.price = "$39.99"
    deal_1.availability = true

    deal_2 = self.new
    deal_2.name = "U4-Pack: Deluxe Atomic Lighter Rechargeable Plasma Beam Lighters"
    deal_2.price = "#$18"
    deal_2.availability = true

    [deal_1, deal_2]
    
  end

end
