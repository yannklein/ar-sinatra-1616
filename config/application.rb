# This is some boilerplate code to read the config/database.yml file
# And connect to the database
config_path = File.join(__dir__, "database.yml")
ActiveRecord::Base.configurations = YAML.load_file(config_path)
configure :development do
  ActiveRecord::Base.establish_connection(:development)
end
configure :production do
  ActiveRecord::Base.establish_connection(:production)
end

# Load all models!
Dir["#{__dir__}/../models/*.rb"].each {|file| require file }