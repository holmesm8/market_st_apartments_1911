class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter

  def initialize(apt_info)
    @number = apt_info[:number]
    @monthly_rent = apt_info[:monthly_rent]
    @bathrooms = apt_info[:bathrooms]
    @bedrooms = apt_info[:bedrooms]
    @renter = nil
  end

  def add_renter(renter)
    @renter = renter
  end
end
