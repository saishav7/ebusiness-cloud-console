class SchemaMigration < ActiveRecord::Base
    self.table_name = 'schema_migration'
    self.primary_key = :version

end
