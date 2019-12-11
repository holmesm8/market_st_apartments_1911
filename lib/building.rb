class Building
  attr_reader :building_units

  def initialize
    @building_units = []
  end

  def add_unit(unit)
    @building_units << unit
  end

  def average_rent
    total_rent = 0
    @building_units.map do |unit|
      total_rent += unit.monthly_rent
    end
    avg_rent = total_rent.to_f / (@building_units.count)
  end

  def renter_with_highest_rent
    sorted_renter = @building_units.sort_by { |unit| unit.monthly_rent.to_f }
    sorted_renter.delete_if { |unit| unit.renter == nil }
    sorted_renter.last.renter
  end
end
