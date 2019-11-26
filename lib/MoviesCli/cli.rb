class MoviesCli::CLI 
  
  def greeting
    start
  end
  
  def start 
    puts ""
    puts " Hello and welcome to my Movie CLI"
    puts ""
    
    call
  end 
  
    def list_movie 
    MoviesCli::API.new.fetch 
    MoviesCli::Movies.all.each do |movie| 
      puts movie.title
      end
    end 
    
    def call 
      puts ""
      puts "  Here is some movie information"
      puts ""
      
    end 
  
end 