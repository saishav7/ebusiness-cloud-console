class CentityRelationshipAndConnection < ActiveRecord::Base
    self.table_name = 'centity_relationship_and_connection'
    self.primary_key = :pconn_centity_rel_id

    belongs_to :centity_relationship, :class_name => 'CentityRelationship', :foreign_key => :pconn_centity_rel_id    
end
