class MoviesCli::CLI 
  
  def call 
    MoviesCli::API.new.fetch 
    MoviesCli::Movies.all.each do |movie| 
      puts movie.name 
    end 
  end 
end 