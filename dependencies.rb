puts "Loading Bar Class..."
require "./app/classes/bar.rb"
puts "Loaded Bar Class"

puts "Loading glass Class..."
require "./app/classes/glass.rb"
puts "Loaded glass Class"

puts "Loading beer Class..."
require "./app/classes/beer.rb"
puts "Loaded beer Class"

puts "Loading beer_glass Class..."
require "./app/classes/beer_glass.rb"
puts "Loaded beer_glass Class"

puts "Loading barman Class..."
require "./app/classes/barman.rb"
puts "Loaded barman Class"

puts "Loading beer_dispenser Class..."
require "./app/classes/beer_dispenser.rb"
puts "Loaded beer_dispenser Class"

beer = Beer.new.("red")
glass = Glass.new.("medium")

dispenser = BeerDispenser.new.(beer: beer, glass: glass)

bglass = BeerGlass.new.(beer: beer, glass: glass)