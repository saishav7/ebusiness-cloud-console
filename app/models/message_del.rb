class MessageDel < ActiveRecord::Base
    self.table_name = 'message_del'
    self.primary_key = :msg_del_name

end
