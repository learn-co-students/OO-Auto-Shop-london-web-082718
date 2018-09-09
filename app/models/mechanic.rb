class Mechanic

  #A mechanic can service multiple cars via speciality type

  attr_reader :name, :classification

  @@all = []

def initialize(name, classification)
  @name = name
  @classification = classification

  @@all << self
end

  def self.all
    self << @@all
  end

  def all_cars_serviced
    cars_serviced = []
    Car.all.each {|car| cars_serviced << car.model if car.mechanic == self}
    cars_serviced.uniq
  end

  def car_owners
    car_owners = []
    Car.all.each {|car| car_owners << car.owner if car.mechanic == self}
    car_owners
  end

  def name_of_owners_worked_with
    owners_worked_with = []
    Car.all.each {|car| owners_worked_with << car.owner.name if car.mechanic == self}
    owners_worked_with.uniq
  end

end
