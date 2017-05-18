module ApplicationHelper
	def get_doc_name(document)
		if document.nil?
			return "Document does not exist"
		else
			return document.filename
		end
	end
end
