class BeerGlass

  attr_accessor :beer
  attr_accessor :glass
  attr_accessor :price


  def call(beer: nil, glass: nil)
    prepare(beer: beer, glass: glass)
  end

  def beer
    "This Beer Glass have #{@beer.type.to_s} beer"
  end

  def glass
    "This Beer Glass is #{@glass.type.to_s} size"
  end

  private

  def prepare(beer: nil, glass: nil)
    if can_prepare_a_beer_glass?(beer: beer, glass: glass)
      @beer = beer
      @glass = glass
      @price  = calculate_price
      self
    end
  end

  def calculate_price
    @beer.price + @glass.price
  end

  def can_prepare_a_beer_glass?(beer: nil, glass: nil)
    beer_is_present?(beer: beer) and glass_is_present?(glass: glass)
  end

  def beer_is_present?(beer: nil)
    beer.is_a? Beer
  end

  def glass_is_present?(glass: nil)
    glass.is_a? Glass
  end

end