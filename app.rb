require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/activerecord"
require "pry-byebug"
require "better_errors"
require_relative "config/application"

# app.rb = Router + Controller

# http://localhost:4567/ (root)
get "/" do
  # @hello = "Hello from the root!"
  @pokemons = Pokemon.all
  erb :index
end


get "/about" do
  "Hello from the About page!"
end














