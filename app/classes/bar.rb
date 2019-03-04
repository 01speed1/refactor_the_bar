require_relative 'beer'
require_relative 'glass'
require_relative 'barman'
require_relative 'beer_dispenser'


class Bar

  attr_accessor :barman
  attr_accessor :beer_glass

  def initialize(barman_name: nil)
    @barman = Barman.new
    @barman.name = barman_name
  end

  def order_a_beer(beer: nil, glass: nil)
    say_hello_to_customer
    glass = prepare_glass(glass)
    beer = select_beer(beer)
    dispensed_beer = dispense_beer(beer: beer, glass: glass)
    collect_beer_glass_money(dispensed_beer)
    dispensed_beer
  end

  private

  def say_hello_to_customer
    @barman.greetings
  end

  def collect_beer_glass_money(beer_glass)
    price = served_beer_price(beer_glass)
    @barman.says("your beer is worth #{price} pesos") if not price.nil?
  end

  def served_beer_price(beer_glass)
    beer_glass.price if beer_glass.is_a? BeerGlass
  end

  def prepare_glass(glass_type)
    Glass.new.(glass_type)
  end

  def select_beer(beer_type)
    Beer.new.(beer_type)
  end

  def dispense_beer(beer: nil, glass: nil)
    BeerDispenser.new.(beer: beer, glass: glass)
  end

  #interactive
  def ask_kind_of_glass
    @barman.says("What kind of glass u whant: small, medium, large")
    glass_type = gets
    prepare_glass(glass_type)
  end

end