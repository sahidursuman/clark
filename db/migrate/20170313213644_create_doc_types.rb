class CreateDocTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :doc_types do |t|
      t.string :title
      t.string :shortname
      t.string :template

      t.timestamps
    end
  end
end
