class Building
  attr_reader :building_units

  def initialize
    @building_units = []
  end

  def add_unit(unit)
    @building_units << unit
  end
end
