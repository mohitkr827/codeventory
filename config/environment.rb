require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/snippets.db'
)

# Load all models
Dir["app/models/*.rb"].each { |file| require_relative "../#{file}" }
