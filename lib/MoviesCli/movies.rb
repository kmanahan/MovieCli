class MoviesCli::Movies 
  attr_accessor :title, :release_date, :overview
  @@all = [] 
  
    def initialize(title, release_date) 
      @title = title
      @release_date = release_date
      @@all << self 
    end 
  
    def self.all
      @@all 
    end 
   
    def overview 
      @overview 
    end 
   
  end