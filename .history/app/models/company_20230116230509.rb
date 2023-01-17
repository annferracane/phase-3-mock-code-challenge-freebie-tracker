class Company < ActiveRecord::Base
    has_many :freebies
    has_many :objects, through: :join_association, source: :join_association_table_foreign_key_to_objects_table

end
