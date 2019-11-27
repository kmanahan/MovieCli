class MoviesCli::API 
  def fetch 
    key = "d55db91a2c26ae6c705d3ec14e5e2a0e"
    url = "https://api.themoviedb.org/3/discover/movie?api_key=d55db91a2c26ae6c705d3ec14e5e2a0e&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1"
    response = HTTParty.get(url)
    binding.pry
    title = response["title"]
    release_date = response["release_date"]
    overview = response["overview"]
    MoviesCli::Movies.new(title, release_date)
  end 
end 