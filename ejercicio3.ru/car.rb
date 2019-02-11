require_relative'Vehicle'

class Car < Vehicle
  @@contador = 0
  def initialize(model, year)
    super
    @@contador += 1
  end

  def self.instances
    @@contador
  end
end

10.times { Car.new('Nissan', 2018) }

puts "Fue instanciado -> #{Car.instances}"
