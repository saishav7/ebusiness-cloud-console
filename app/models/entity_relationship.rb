class EntityRelationship < ActiveRecord::Base
    self.table_name = 'entity_relationship'
    self.primary_key = :relation_id

end
