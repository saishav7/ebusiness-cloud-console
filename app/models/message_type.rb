class MessageType < ActiveRecord::Base
    self.table_name = 'message_type'
    self.primary_key = :msgtype_id

end
