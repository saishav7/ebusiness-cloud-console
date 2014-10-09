class MessageType < ActiveRecord::Base
    self.table_name = 'message_type'
    self.primary_key = :msgtype_id

    has_many :process_message_relationships, :class_name => 'ProcessMessageRelationship', :foreign_key => :msgtype_id    
    has_many :messages, :class_name => 'Message'    
    belongs_to :electronic_address, :class_name => 'ElectronicAddress', :foreign_key => :msgtype_eaddress_id    
    belongs_to :edifact_message_type, :class_name => 'EdifactMessageType', :foreign_key => :msgtype_name        
end
