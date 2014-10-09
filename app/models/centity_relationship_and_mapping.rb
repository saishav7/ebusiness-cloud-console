class CentityRelationshipAndMapping < ActiveRecord::Base
    self.table_name = 'centity_relationship_and_mapping'
    self.primary_key = :pmap_centity_rel_id

    belongs_to :centity_relationship, :class_name => 'CentityRelationship', :foreign_key => :pmap_centity_rel_id    
end
