class Owner
  attr_accessor :name
  attr_reader :species, :pets
  
  def initialize(species)
    @species =  species
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
end