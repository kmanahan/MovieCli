class MovieCli::Movies 
  attr_accessor :name 
  @@all = [] 
  
    def initialize(name) 
      @name = name 
      @@all << self 
    end 
  
    def self.all 
      binding.pry
      @all 
    end 
    
    def name 
      @name 
    end 