class AddFileNameToDocuments < ActiveRecord::Migration[5.0]
  def change
add_column	 :documents, :filename, :string
  end
end
