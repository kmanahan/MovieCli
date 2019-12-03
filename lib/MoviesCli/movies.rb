class Movies 
  attr_accessor :title, :release_date, :overview
  @@all = [] 
  
  def initialize(title, release_date, overview) 
    @title = title
    @release_date = release_date
    @overview = overview
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def self.find_by_name(title)
    self.all.detect {|movie| movie.title == title}
  end 
  
end