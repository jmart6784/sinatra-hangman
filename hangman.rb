require "sinatra"
require "sinatra/reloader" if development?
require "./game.rb"

configure do
  enable :sessions
  set :session_secret, "access321"
end

get "/" do
  @session = session
  input = params["guess"]
  erb :index, :locals => { :input => input }
end