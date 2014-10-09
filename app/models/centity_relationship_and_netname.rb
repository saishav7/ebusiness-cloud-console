class CentityRelationshipAndNetname < ActiveRecord::Base
    self.table_name = 'centity_relationship_and_netname'
    self.primary_key = :pnet_centity_rel_id

    belongs_to :centity_relationship, :class_name => 'CentityRelationship', :foreign_key => :pnet_centity_rel_id    
end
