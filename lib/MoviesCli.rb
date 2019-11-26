require_relative "./MoviesCli/version"
require_relative "./MoviesCli/cli"
require_relative "./MoviesCli/movies" 
require_relative "./MoviesCli/api"


require "pry" 
require "httparty"

module MoviesCli
  class Error < StandardError; end
  # Your code goes here...
end
