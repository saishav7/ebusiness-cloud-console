class Company < ActiveRecord::Base
    self.table_name = 'company'
    self.primary_key = :company_id

    belongs_to :company_status, :class_name => 'CompanyStatus', :foreign_key => :company_status_id    
    has_many :centities, :class_name => 'Centity'    
end
