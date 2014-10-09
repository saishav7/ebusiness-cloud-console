class CentityRelationshipAndXmlTran < ActiveRecord::Base

    self.primary_key = :pxml_centity_rel_id

    belongs_to :centity_relationship, :class_name => 'CentityRelationship', :foreign_key => :pxml_centity_rel_id    
end
