class EdifactMessageType < ActiveRecord::Base
    self.table_name = 'edifact_message_type'
    self.primary_key = :edifact_msgtype_name

    has_many :message_types, :class_name => 'MessageType'    
end
