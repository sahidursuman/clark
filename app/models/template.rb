class Template < ApplicationRecord
	has_attached_file :file
   	validates_attachment_file_name :file, :matches => [/docx\Z/, /dotx\Z/, /doc\Z/]
end
