# This is some boilerplate code to read the config/database.yml file
# And connect to the database
config_path = File.join(__dir__, "database.yml")
ActiveRecord::Base.configurations = YAML.load_file(config_path)
ActiveRecord::Base.establish_connection(:environment)

# Load all models!
Dir["#{__dir__}/../models/*.rb"].each {|file| require file }