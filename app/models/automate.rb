class Automate < ActiveRecord::Base
    self.table_name = 'automate'
    self.primary_key = :task_name

end
