class Owner
  attr_accessor :name
  attr_reader :species
  
  def initialize(species)
    @species =  species
  end
  
end