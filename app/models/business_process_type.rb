class BusinessProcessType < ActiveRecord::Base
    self.table_name = 'business_process_type'
    self.primary_key = :bp_id

    has_many :process_message_relationships, :class_name => 'ProcessMessageRelationship', :foreign_key => :bp_id    
    has_many :centity_relationships, :class_name => 'CentityRelationship'    
end
