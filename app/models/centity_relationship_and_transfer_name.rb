class CentityRelationshipAndTransferName < ActiveRecord::Base
    self.table_name = 'centity_relationship_and_transfer_name'
    self.primary_key = :ptfn_centity_rel_id

    belongs_to :centity_relationship, :class_name => 'CentityRelationship', :foreign_key => :ptfn_centity_rel_id    
end
