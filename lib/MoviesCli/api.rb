class MoviesCli::API 
  def fetch 
    key = "d55db91a2c26ae6c705d3ec14e5e2a0e"
    url = "https://api.themoviedb.org/3/movie/550?api_key=d55db91a2c26ae6c705d3ec14e5e2a0e"
    response = HTTparty.get(url)
    binding.pry
  end 
end 