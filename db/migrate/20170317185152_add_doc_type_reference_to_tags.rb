class AddDocTypeReferenceToTags < ActiveRecord::Migration[5.0]
  def change
    add_reference :tags, :doc_type, foreign_key: true
  end
end
