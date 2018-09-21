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

def buy_fish(mellowFish)
 @pets[:fishes] << Fish.new(mellowFish)
end

def buy_cat(suspicious)
@pets[:cats] << Cat.new(suspicious)
end

def buy_dog(bull)
@pets[:dogs] << Dog.new(bull)
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
  @pets.each do |every_animal_key, animals_arrays|
    animals_arrays.each do |pet|
    # unless pet.mood = 'happy'
    pet.mood = 'nervous'
    # binding.pry #animal.mood => nervous
   end
   animals_arrays.clear
 end
end

def list_pets
"I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
 #  pets.each do |every_animal_key, animals_arrays|
 #   puts "I have #{animals_arrays.count} #{every_animal_key}, and #{animals} #{every_animal_key}, #{animals_arrays.count} #{every_animal_key} ."
 #    # binding.pry
 # end
 #  end
end
