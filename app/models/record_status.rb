class RecordStatus < ActiveRecord::Base
    self.table_name = 'record_status'
    self.primary_key = :status_id

end
