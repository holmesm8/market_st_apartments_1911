class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter

  def initialize(unit_info)
    @number = unit_info[:number]
    @monthly_rent = unit_info[:monthly_rent]
    @bathrooms = unit_info[:bathrooms]
    @bedrooms = unit_info[:bedrooms]
    @renter = nil
  end

  def add_renter(renter)
    @renter = renter
  end
end
