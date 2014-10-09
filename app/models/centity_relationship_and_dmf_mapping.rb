class CentityRelationshipAndDmfMapping < ActiveRecord::Base
    self.table_name = 'centity_relationship_and_dmf_mapping'
    self.primary_key = :pdmf_centity_rel_id

    belongs_to :centity_relationship, :class_name => 'CentityRelationship', :foreign_key => :pdmf_centity_rel_id    
end
