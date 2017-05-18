class Document < ApplicationRecord
	belongs_to :doc_type
	belongs_to :project
	has_many :doc_data, :class_name => "DocDatum", :foreign_key => "document_id"
	accepts_nested_attributes_for :doc_data
	after_create :create_docdata
	private
		def create_docdata

		self.doc_type.tags.each do |t| 
			@dd=DocDatum.new( :tag_id => t.id, :document_id => self.id)	
			@dd.save
			logger.debug @dd.inspect
			logger.debug @dd.errors.full_messages
		end

		end
end
