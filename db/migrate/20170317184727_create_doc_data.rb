class CreateDocData < ActiveRecord::Migration[5.0]
  def change
    create_table :doc_data do |t|
      t.text :data

      t.timestamps
    end
  end
end
