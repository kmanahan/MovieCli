class MoviesCli::CLI 
  
  def greeting
    start
  end
  
  def start 
    puts ""
    puts " Welcome.\n\n These are the top box office movies sorted by popularity.\n\n Enter the number of the movie you would like more information on. \n\n To leave press exit."
    puts ""
    
    movie_title
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
  
end 