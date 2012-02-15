require 'rails/generators'

module Preferences
	class InstallMigrations < Rails::Generators::Base
		include Rails::Generators::Migration
		# extend Rails::Generators::Migration::ClassMethods
		
		source_root File.expand_path("../templates", __FILE__)
		
		class << self
			def next_migration_number(dirname) #:nodoc:
        next_migration_number = current_migration_number(dirname) + 1
        if ActiveRecord::Base.timestamped_migrations
          [Time.now.utc.strftime("%Y%m%d%H%M%S"), "%.14d" % next_migration_number].max
        else
          "%.3d" % next_migration_number
        end
      end
		end
		
		def install_migrations
			migration_template "migration.rb", "db/migrate/add_preferences.rb"
	  end
	end
end