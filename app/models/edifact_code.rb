class EdifactCode < ActiveRecord::Base
    self.table_name = 'edifact_code'
    self.primary_key = :code_id

    belongs_to :centity, :class_name => 'Centity', :foreign_key => :partner_id    
    has_many :electronic_addresses, :class_name => 'ElectronicAddress', :foreign_key => :code_id    
end
