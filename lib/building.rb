class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    rent_totals = @units.map {|unit| unit.monthly_rent}
    avg_rent = rent_totals.sum / rent_totals.count.to_f
  end

  def renter_with_highest_rent
    @units.max_by do |unit|
      if unit.renter != nil
        unit.monthly_rent
        return unit.renter
      end
    end
  end

  def annual_breakdown
    occupied = @units.find_all {|unit| unit if unit.renter != nil}
    occupied.reduce({}) do |hash, key|
      hash[key.renter.name] = key.monthly_rent * 12
      hash
    end
  end
end
