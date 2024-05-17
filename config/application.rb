puts "Establishing connection with DB"
ActiveRecord::Base.establish_connection(
  :adapter  => "sqlite3",
  :database => "db/development.sqlite3"
)
puts "Connection established"

# Load all models!
Dir["#{__dir__}/../models/*.rb"].each {|file| require file }
