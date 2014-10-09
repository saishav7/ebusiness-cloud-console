class CompanyStatus < ActiveRecord::Base
    self.table_name = 'company_status'
    self.primary_key = :status_id

    has_many :companies, :class_name => 'Company'    
end
