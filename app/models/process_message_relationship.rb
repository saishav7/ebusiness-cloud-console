class ProcessMessageRelationship < ActiveRecord::Base
    self.table_name = 'process_message_relationship'
    self.primary_key = :bp_id

    belongs_to :business_process_type, :class_name => 'BusinessProcessType', :foreign_key => :bp_id    
    belongs_to :message_type, :class_name => 'MessageType', :foreign_key => :msgtype_id    
end
