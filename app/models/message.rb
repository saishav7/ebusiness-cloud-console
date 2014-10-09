class Message < ActiveRecord::Base
    self.table_name = 'message'
    self.primary_key = :msg_id

    belongs_to :centity_relationship, :class_name => 'CentityRelationship', :foreign_key => :msg_relation_id    
    has_many :documents, :class_name => 'Document', :foreign_key => :msg_id    
    belongs_to :message_type, :class_name => 'MessageType', :foreign_key => :msg_type_id    
end
