class ConnectionSendingFormat < ActiveRecord::Base
    self.table_name = 'connection_sending_format'
    self.primary_key = :csf_connection_name

end
