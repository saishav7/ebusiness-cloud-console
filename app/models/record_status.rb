class RecordStatus < ActiveRecord::Base
    self.table_name = 'record_status'
    self.primary_key = :status_id

    has_many :centity_relationships, :class_name => 'CentityRelationship'    
    has_many :centities, :class_name => 'Centity'    
end
