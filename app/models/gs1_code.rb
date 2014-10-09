class Gs1Code < ActiveRecord::Base
    self.table_name = 'gs1_code'
    self.primary_key = :code_id

    has_many :electronic_addresses, :class_name => 'ElectronicAddress', :foreign_key => :code_id    
end
