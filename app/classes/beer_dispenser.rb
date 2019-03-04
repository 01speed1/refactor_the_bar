require_relative 'beer_glass'

class BeerDispenser

  def call(beer: nil, glass: nil)
    dispense_a_beer_glass(beer: beer, glass: glass)
  end

  private

  def dispense_a_beer_glass(beer: nil, glass: nil)
    BeerGlass.new.(beer: beer, glass: glass)
  end

end