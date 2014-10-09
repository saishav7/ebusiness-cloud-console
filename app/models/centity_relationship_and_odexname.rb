class CentityRelationshipAndOdexname < ActiveRecord::Base
    self.table_name = 'centity_relationship_and_odexname'
    self.primary_key = :pon_centity_rel_id

    belongs_to :centity_relationship, :class_name => 'CentityRelationship', :foreign_key => :pon_centity_rel_id    
end
