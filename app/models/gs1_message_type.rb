class Gs1MessageType < ActiveRecord::Base
    self.table_name = 'gs1_message_type'
    self.primary_key = :gs1_msgtype_name

    has_many :message_types, :class_name => 'MessageType'    
end
