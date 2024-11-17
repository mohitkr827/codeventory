require_relative './config/environment'
require 'active_record'
require 'rake'

# Load Rake tasks
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/snippets.db'
)

namespace :db do
  desc 'Migrate the database'
  task :migrate do
    ActiveRecord::Tasks::DatabaseTasks.migrate
  end

  desc 'Rollback the last migration'
  task :rollback do
    ActiveRecord::Tasks::DatabaseTasks.rollback
  end
end
