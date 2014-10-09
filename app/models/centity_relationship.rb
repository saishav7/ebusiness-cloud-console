class CentityRelationship < ActiveRecord::Base
    self.table_name = 'centity_relationship'
    self.primary_key = :relation_id

    belongs_to :business_process_type, :class_name => 'BusinessProcessType', :foreign_key => :relation_bp_id    
    belongs_to :centity, :class_name => 'Centity', :foreign_key => :centity2_id    
    belongs_to :centity, :class_name => 'Centity', :foreign_key => :centity1_id    
    has_many :centity_relationship_and_transfer_names, :class_name => 'CentityRelationshipAndTransferName'    
    has_many :centity_relationship_and_dmf_mappings, :class_name => 'CentityRelationshipAndDmfMapping'    
    has_many :centity_relationship_and_mappings, :class_name => 'CentityRelationshipAndMapping'    
    has_many :centity_relationship_and_xml_trans, :class_name => 'CentityRelationshipAndXmlTran'    
    has_many :centity_relationship_and_editions, :class_name => 'CentityRelationshipAndEdition'    
    has_many :centity_relationship_and_odexnames, :class_name => 'CentityRelationshipAndOdexname'    
    has_many :centity_relationship_and_netnames, :class_name => 'CentityRelationshipAndNetname'    
    has_many :centity_relationship_and_connections, :class_name => 'CentityRelationshipAndConnection'    
    has_many :messages, :class_name => 'Message'    
    belongs_to :record_status, :class_name => 'RecordStatus', :foreign_key => :relation_status_id    
end
