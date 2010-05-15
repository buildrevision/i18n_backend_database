require 'rails/generators/migration'

class I18nBackendDatabaseGenerator < Rails::Generators::NamedBase
  include Rails::Generators::Migration
  
  def install_i18n_backend_database
    migration_template "001_create_i18n_tables.rb", "db/migrate/create_i18n_tables"
  end
  
  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end
  
  def self.source_root
    @_devise_source_root ||= File.expand_path("../templates", __FILE__)
  end
end
