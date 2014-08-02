# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

##Rake - run maintenance-like functions on the app e.x working with the DB, executing unit tests, deploying to a server
#db:migrate = "look in your set of functions for the database (db) and run the migrate function."
#The migrate action finds all migrations in the db/migrate/ folder,
  #looks at a special table in the DB to determine which migrations have and have not been run yet,
  #then runs any migration that hasn’t been run.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks
