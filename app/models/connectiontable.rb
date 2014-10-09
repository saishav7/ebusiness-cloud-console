class Connectiontable < ActiveRecord::Base
    self.table_name = 'connectiontable'
    self.primary_key = :connection_name

end
