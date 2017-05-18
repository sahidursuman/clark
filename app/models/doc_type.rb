class DocType < ApplicationRecord
	has_many :document
	belongs_to :template
	has_and_belongs_to_many :projects
	has_many :tags
end
