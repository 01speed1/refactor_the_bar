class Glass

  attr_accessor :type
  attr_accessor :price

  GLASSES = {
    small: 1000,
    medium: 3000,
    large: 5000
  }

  def call(glass_type)
    glass_exist?(glass_type)
  end

  private

  def add_a_glass( type: nil, price: nil )
    if not type.nil? and not price.nil?
      GLASSES[type] = price
    end
  end

  def glass_exist?(glass_type)
    glass_type = glass_type.to_sym if not glass_type.nil?
    if GLASSES.has_key?(glass_type)
      build_glass(glass_type)
    end
  end

  def build_glass(glass_type)
    @price = GLASSES[glass_type]
    @type = glass_type
    self
  end

end