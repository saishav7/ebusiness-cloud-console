class SenderReceiverContact < ActiveRecord::Base
    self.table_name = 'sender_receiver_contact'
    self.primary_key = :contact_id

end
