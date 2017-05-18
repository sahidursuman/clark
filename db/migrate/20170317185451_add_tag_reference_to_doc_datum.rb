class AddTagReferenceToDocDatum < ActiveRecord::Migration[5.0]
  def change
    add_reference :doc_data, :tag, foreign_key: true
  end
end
