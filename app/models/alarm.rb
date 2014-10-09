class Alarm < ActiveRecord::Base
    self.table_name = 'alarm'
    self.primary_key = :alarms_ebdx_user

end
