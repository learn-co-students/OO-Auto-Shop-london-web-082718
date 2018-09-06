class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average
    p "There is an average of #{Car.all.size / @@all} cars per owner."
  end

  def cars
    Car.all.select { |car| car.owner == self }
  end

  def mechanics
    cars.map { |car| car.mechanic }
  end

end
