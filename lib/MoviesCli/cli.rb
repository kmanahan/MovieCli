class CLI 
  
  def start 
    puts ""
    puts " Welcome.\n\n To view the top movies sorted by popularity type \"movies\".\n\n Then enter the number of the movie you would like more information on. \n\n To search by movie name type \"search\". \n\n To leave press exit."
    puts ""
    API.new.fetch
    menu
  end 
  
  def movie_list
    @movies = Movies.all
    @movies.each.with_index(1) do |movie, i|
    puts "#{i}. #{movie.title}"
    end
  end
  
  def find_title
    puts "Please enter movie name"
    input = gets.strip
    if movie = Movies.find_by_name(input)
      puts "Title: #{movie.title}\nReleased: #{movie.release_date}\nOverview: #{movie.overview}"
    
    else
      puts "movie not found type \"search\" again to enter a valid title."
    end
  end

  def menu
    input = nil
    while input != "exit"
    input = gets.strip.downcase
      if input.to_i > 20
        puts "" 
        puts "That is not a valid number, please try again"
      elsif input.to_i > 0 
        the_movie = @movies[input.to_i-1]
        puts "Title: #{the_movie.title}\nReleased: #{the_movie.release_date}\nOverview: #{the_movie.overview}"
      elsif input == "movies"
        movie_list 
      elsif input == "search"
        find_title
      elsif input == "exit"
        puts ""
        puts "Goodbye!"
        puts ""
      else
        puts "Invalid entry please type movies or exit."
      end
    end
  end
end
