class AddDocumentReferenceToDocDatum < ActiveRecord::Migration[5.0]
  def change
    add_reference :doc_data, :document, foreign_key: true
  end
end
