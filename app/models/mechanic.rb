class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_serviced
    Car.all.select { |car| car.mechanic == self }
  end

  def clients
    cars_serviced.map { |car| car.owner }
  end

  def client_names
    clients.map { |car| car.owner }
  end

end
