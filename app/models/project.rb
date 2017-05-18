class Project < ApplicationRecord
	has_many :documents
	has_and_belongs_to_many :doc_types

	def get_doc_for_type (doc_type_id)
		@doc = Document.find_by({:project_id => self.id,:doc_type_id => doc_type_id})
		logger.debug @doc.inspect
		return @doc
	end
end
