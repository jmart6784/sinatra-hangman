require "sinatra"
require "sinatra/reloader" if development?
require "./game.rb"

configure do
  enable :sessions
  set :session_secret, "access321"
end

def store_data(filename, string)
  File.open(filename, "a+") do |file|
    file.puts(string)
  end
end

def read_data
  return [] unless File.exists?("data.txt")
  File.read("data.txt").split("\n")
end

def clear_data(filename)
  File.open(filename, 'w') {}
end

get "/" do
  @session = session
  @input = params["guess"]
  @guesses = read_data
  # @clear_guesses = clear_data('data.txt')
  store_data("data.txt", @input)
  erb :index, :locals => { :input => @input }
end