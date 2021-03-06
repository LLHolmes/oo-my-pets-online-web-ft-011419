class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species =  species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
 
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
 
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
 
  def walk_dogs
    @pets[:dogs].each { |pet| pet.mood = "happy" }
  end
 
  def play_with_cats
    @pets[:cats].each { |pet| pet.mood = "happy" }
  end
 
  def feed_fish
    @pets[:fishes].each { |pet| pet.mood = "happy" }
  end
 
  def sell_pets
    @pets.each do |type, animals|
      animals.each { |pet| pet.mood = "nervous" }
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end
 
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
 
  def self.all
    @@all
  end
 
  def self.count
    @@all.length
  end
 
  def self.reset_all
    @@all.clear
  end

end