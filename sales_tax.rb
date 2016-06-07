#Sales Tax#
class Item
attr_accessor :name, :price
  def initialize(name, price, import)
    @name = name
    @price = price
    @import = import
    @item_cost = 0
  end

#Defining the Method that applies Taxes#

  def tax
    tax = 0
    exempt = ["book", "medicine", "food"]
      if @import == true && exempt.include?(@name)
        #Tax equals Duty equals true 0.005. When Exempt equals true, tax == 0.
        tax = 0.05
      elsif @import == true && !exempt.include?(@name)
        tax = 0.15
      elsif @import == false && !exempt.include?(@name)
        tax = 0.10
      elsif @import == false && exempt.include?(@name)
        tax = 0
      end
      tax * @price
    end

  def total
    @price + self.tax
  end
end #Closes Item Class#

#Receipt Class#

class Receipt

  def initialize
    @items = [ ]
  end

  def add(item)
    @items.push(item)
  end

#Keeping all printing contained within the print_receipt Class#

  def print_receipt
    @items.each do |item|
      puts "1 #{item.name}: #{item.price}"
    end
    puts "Sales Taxes: #{total_tax}"
    puts "Total: #{total_cost + total_tax}"
  end

  def total_tax
    tax = 0
    @items.each do |item|
    tax += item.tax
    end
    tax.round(2)
  end

  def total_cost
    total = 0
    @items.each do |item|
    total += item.price
  end
    total.round(2)
  end
end

# receipt = Receipt.new
#
# book = Item.new("Book", 12.49, false)
#
# receipt.add(book)
#
# puts "=================="
#
# music = Item.new("Music CD", 14.99, false)
# # puts music.tax
# # puts music.total
# receipt.add(music)
#
# puts "=================="
#
# box_of_chocolates = Item.new("Chocolate Box", 10.00, true)
#
# # puts box_of_chocolates.tax
# # puts box_of_chocolates.total
# receipt.add(box_of_chocolates)
#
# receipt.print_receipt
#
# # receipt.add(chocolate_bar)
# #
# # receipt.print_receipt
