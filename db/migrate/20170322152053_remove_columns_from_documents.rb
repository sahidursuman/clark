class RemoveColumnsFromDocuments < ActiveRecord::Migration[5.0]
	def change
		remove_column :documents, :title, :string
		remove_column :documents, :number, :string
		remove_column :documents, :customer, :string
		remove_column :documents, :purpose, :text
		remove_column :documents, :method, :text
		remove_column :documents, :references, :text
		remove_column :documents, :naming_conventions, :text
		remove_column :documents, :change_log, :text
		add_column :documents, :revision, :integer
	end
end
