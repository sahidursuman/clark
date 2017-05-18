class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :number
      t.string :customer
      t.belongs_to :doc_type, foreign_key: true
      t.belongs_to :project, foreign_key: true
      t.text :purpose
      t.text :method
      t.text :references
      t.text :naming_conventions
      t.text :change_log

      t.timestamps
    end
  end
end
