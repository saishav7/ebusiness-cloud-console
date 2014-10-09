class Document < ActiveRecord::Base
    self.table_name = 'document'
    self.primary_key = :doc_id

    belongs_to :message, :class_name => 'Message', :foreign_key => :msg_id    
end
