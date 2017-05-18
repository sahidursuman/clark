class DocDatum < ApplicationRecord
	belongs_to :tag	
	belongs_to :document

def get_name
	@name = self.tag.name
end
end
