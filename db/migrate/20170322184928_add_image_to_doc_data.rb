class AddImageToDocData < ActiveRecord::Migration[5.0]
  def change
    add_column :doc_data, :image, :binary
  end
end
