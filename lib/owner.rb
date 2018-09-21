class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@OWNERS = []
  @@species
  # code goes here

  def initialize(name)
    @name = name
    @@species = 'human'
    @pets = { fishes: [], cats: [], dogs: []}
    @@OWNERS << self
  end

def species
   @@species
end

  def self.all
      @@OWNERS
  end

  def self.count
      @@OWNERS.length
  end

def self.reset_all
   @@OWNERS.clear
end

def say_species
  "I am a #{@@species}."
end

def buy_fish(fido)
 @pets[:fishes] << Fish.new(fido)
end

def buy_cat(meow)
@pets[:cats] << Cat.new(meow)
end

def buy_dog(bulldog)
@pets[:dogs] << Dog.new(bulldog)
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = 'happy'
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = 'happy'
  end
end

def feed_fish
  @pets[:fishes].each do |fish_ate|
    fish_ate.mood ='happy'
  end
end

def sell_pets
  @pets.each do |kind, pets|
    pets.each do |pet|
    # unless pet.mood = 'happy'
    pet.mood = 'nervous'
   end
   pets.clear
 end
end

#   @pets.each do |pet|
# #    #  # binding.pry
# #     if pet == @pets[:fishes]
# #       p pet
# #    #  binding.pry
# #    # end
# #       pet.each do |fish_ate|
# #           fish_ate == 'happy'
# #       p pet
# #     end
#   end
#  end
# end
end
