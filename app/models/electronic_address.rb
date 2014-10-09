class ElectronicAddress < ActiveRecord::Base
    self.table_name = 'electronic_address'
    self.primary_key = :eaddress_id

    belongs_to :edifact_code, :class_name => 'EdifactCode', :foreign_key => :code_id      
    has_many :message_types, :class_name => 'MessageType'    
    has_many :centities, :class_name => 'Centity'    
end
