require 'pry'

require_relative 'app/models/car_owner'
require_relative 'app/models/car'
require_relative 'app/models/mechanic'

ali = CarOwner.new("Ali")
bobby = CarOwner.new("Bobby")
dan = CarOwner.new("Dan")
jo = CarOwner.new("Jo")
billie = CarOwner.new("Billie")


dom = Mechanic.new("Dom", "clunker")
bob = Mechanic.new("Bob", "exoctic")
mark = Mechanic.new("Mark", "tech")
samit = Mechanic.new("Samit", "classic")
david = Mechanic.new("David", "boring")


civic = Car.new("Honda", "Civic", "clunker", ali, dom)
a_class = Car.new("Mercedes", "A-Class", "exotic", ali, bob)
enzo = Car.new("Ferrari", "Enzo", "exotic", ali, bob)
mondeo = Car.new("Ford", "Mondeo", "clunker", bobby, dom)
prius = Car.new("Toyota", "Prius", "tech", dan, mark)
pagoda = Car.new("Mercedes", "Pagoda", "Classic", billie, samit)
mustang = Car.new("Ford", "Mustang", "Classic", jo, samit)
fiesta = Car.new("Ford", "Fiesta", "clunker", ali, dom)
golf = Car.new("Volswaen", "Golf", "boring", billie, david)
qashqai = Car.new("Nissan", "Qashqai", "boring", dan, david)
corsa = Car.new("Vauxhall", "Corsa", "clunker", bobby, dom)
veron = Car.new("Bugatti", "Veyron", "exotic", ali, bob)
a3 = Car.new("Audi", "A3", "exotic", dan, bob)
civic = Car.new("Honda", "Civic", "clunker", bobby, dom)
enzo = Car.new("Ferrari", "Enzo", "exotic", jo, bob)
focus = Car.new("Ford", "Focus", "boring", jo, david)
focus = Car.new("Ford", "Focus", "boring", ali, david)
focus = Car.new("Ford", "Focus", "boring", bobby, david)
focus = Car.new("Ford", "Focus", "boring", dan, david)
focus = Car.new("Ford", "Focus", "boring", billie, david)





binding.pry
p "HEARD"
