class MoviesCli::CLI 
  
  def greeting
    start
    call
  end
  
  def start 
    puts ""
    puts " Hello and welcome to my Movie CLI.\n\n Here are the top box office movies:"
    puts ""
  end 
  
    def movie_title 
    MoviesCli::API.new.fetch 
    @movies = MoviesCli::Movies.all
    @movies.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title}"
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
      movie_title
    end 
  
end 