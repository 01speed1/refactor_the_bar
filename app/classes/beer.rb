class Beer

  attr_accessor :type
  attr_accessor :price

  BEERS = {
    blonde: 1000,
    red:    2000,
    dark:   5000
  }

  def call(beer_type)
    beer_exist?(beer_type)
  end

  private

  def add_a_beer( type: nil, price: nil )
    if not type.nil? and not price.nil?
      BEERS[type] = price
    end
  end

  def beer_exist?(beer_type)
    beer_type = beer_type.to_sym if not beer_type.nil?
    if BEERS.has_key?(beer_type)
      build_glass(beer_type)
    end
  end

  def build_glass(glass_type)
    @price = BEERS[glass_type]
    @type = glass_type
    self
  end

end