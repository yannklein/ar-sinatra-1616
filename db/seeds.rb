require 'open-uri'
require 'json'

url = "https://pokeapi.co/api/v2/pokemon-form/123"
# name: poke_data["name"], 
# image_url: poke_data["sprites"]["front_default"],
# poke_type: poke_data["types"][0]["type"]["name"]

puts "Destroying pokemons..."
Pokemon.destroy_all
puts "Pokemons destroyed"

50.times do
  url = "https://pokeapi.co/api/v2/pokemon-form/#{rand(1..200)}"
  response = URI.open(url).read()
  poke_data = JSON.parse(response)
  pokemon = Pokemon.new(
    name: poke_data["name"], 
    image_url: poke_data["sprites"]["front_default"],
    poke_type: poke_data["types"][0]["type"]["name"]
  )
  pokemon.save!
  puts "Created #{poke_data["name"]}"

  # NEW + SAVE
  # Pokemon.create!(
  #   name: poke_data["name"], 
  #   image_url: poke_data["sprites"]["front_default"],
  #   poke_type: poke_data["types"][0]["type"]["name"]
  # )
end
puts "Finished"