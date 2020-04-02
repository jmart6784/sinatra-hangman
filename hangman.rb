require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  input = params["guess"]
  erb :index, :locals => { :input => input }
end