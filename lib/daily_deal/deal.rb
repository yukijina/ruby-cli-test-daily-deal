class DailyDeal::Deal
  attr_accessor :name, :price, :availability, :url

  def self.today
    self.scrape_deals
  end

  def self.scrape_deals
    deals = []
    deals << self.scrape_woot
    deals << self.scrape_meh
    deals
  end

  def self.scrape_woot
    doc = Nokogiri::HTML(open("https://www.woot.com/"))

    deal = self.new
    deal.name = doc.css(".overview h2").text
    deal.price = doc.css(".overview .price.min").text
    deal.availability = true
    deal
  end

  def self.scrape_meh
    doc = Nokogiri::HTML(open("https://meh.com/"))

    deal = self.new
    deal.name = doc.css(".features h2").text.strip
    deal.price = doc.css("#hero-buttons button").text.gsub(/["meh","Buy it",\r\n.]/, "")
    deal.availability = true
    deal
  end

end
