class MoviesCli::CLI 
  
  def greeting
    start
  end
  
  def start 
    puts ""
    puts " Hello and welcome to my Movie CLI.\n\n Here are the top box office movies:"
    puts ""
    
    movie_title
  end 
  
    def movie_title 
    MoviesCli::API.new.fetch 
    MoviesCli::Movies.all.each do |movie| 
      puts movie.title
      end
    end 
    
    def release_date 
    MoviesCli::Movies.all.each do |movie| 
      puts movie.release_date
      end
    end 
    
    def call 
      puts ""
      puts "  Here is some movie information"
      puts ""
      
    end 
  
end 