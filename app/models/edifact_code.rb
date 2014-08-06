class EdifactCode < ActiveRecord::Base
    self.table_name = 'edifact_code'
    self.primary_key = :code_id

end
