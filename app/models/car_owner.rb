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

def list_of_cars
  Car.all.select {|car| car.owner == self}
end

def mechanics
  array = []
  Car.all.each { |car| array << car.mechanic.name if car.owner == self }
  array
end

def self.avg_cars_owned_per_owner
  #get array of number of cars owned by each owner then work out average
  hash = {}
  Car.all.map do |car|
    if hash[car.owner.name]
      hash[car.owner.name] += 1
    else
      hash[car.owner.name] = 1
    end
  end
  numbers = []
  hash.each {|k, v| numbers << v}
  numbers
  numbers.inject{ |sum, el| sum + el }.to_f / numbers.size.round
end



end
