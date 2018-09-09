class Car

  #A car can belong to many owners
  #A car belongs to a mechanic via classification

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
     all.map {|car| car.classification }.uniq
  end

  def mechanic_with_right_expertise
    self.mechanic.name
  end

end
