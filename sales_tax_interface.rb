require_relative "sales_tax"

#Receipt 1#

receipt = Receipt.new
puts "Receipt 1"

#Creating objects to add to Receipt#

book = Item.new("book", 12.49, false)

receipt.add(book)

music = Item.new("music cd", 14.99, false)
receipt.add(music)

chocolate_bar = Item.new("chocolate bar", 0.85, false)
receipt.add(chocolate_bar)

receipt.print_receipt
puts "=============================="

#Receipt 2#
receipt2 = Receipt.new
puts "Receipt 2"

#Creating objects to add to Receipt 2#

box_of_chocolates = Item.new("Imported Box of Chocolates", 10.00, true)
receipt2.add(box_of_chocolates)

perfume = Item.new("Imported Bottle of Perfume", 47.50, true)
receipt2.add(perfume)

receipt2.print_receipt
puts "=============================="

#Receipt 3#

receipt3 = Receipt.new
puts "Receipt 3"

#Creating objects to add to Receipt 3#

perfume = Item.new("Imported Bottle of Perfume", 32.19, true)
receipt3.add(perfume)

domestic_perfume = Item.new("Bottle of Perfume", 18.99, false)
receipt3.add(domestic_perfume)

pills = Item.new("Headache Pills", 9.75, false)
receipt3.add(pills)

imported_box_of_chocolates = Item.new("Imported Box of Chocolates", 11.85, true)
receipt3.add(imported_box_of_chocolates)

receipt3.print_receipt
puts "=============================="
