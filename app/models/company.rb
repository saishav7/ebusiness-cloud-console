class Company < ActiveRecord::Base
    self.table_name = 'company'
    self.primary_key = :company_id

end
