class CentityRelationshipAndEdition < ActiveRecord::Base
    self.table_name = 'centity_relationship_and_edition'
    self.primary_key = :pedi_centity_rel_id

    belongs_to :centity_relationship, :class_name => 'CentityRelationship', :foreign_key => :pedi_centity_rel_id    
end
