class Centity < ActiveRecord::Base
    self.table_name = 'centity'
    self.primary_key = :centity_id

    has_many :internal_codes, :class_name => 'InternalCode'    
    has_many :edifact_codes, :class_name => 'EdifactCode'    
    has_many :centity_relationships, :class_name => 'CentityRelationship'    
    has_many :centity_relationships, :class_name => 'CentityRelationship'    
    belongs_to :record_status, :class_name => 'RecordStatus', :foreign_key => :centity_status_id    
    belongs_to :company, :class_name => 'Company', :foreign_key => :centity_company_id    
    belongs_to :electronic_address, :class_name => 'ElectronicAddress', :foreign_key => :centity_eaddress_id    
end
