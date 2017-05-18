class Tag < ApplicationRecord
	has_one :Tag
	belongs_to :DocType, :class_name => "DocType", :foreign_key => "doc_type_id"
end
