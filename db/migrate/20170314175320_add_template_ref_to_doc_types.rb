class AddTemplateRefToDocTypes < ActiveRecord::Migration[5.0]
  def change
    add_reference :doc_types, :template, foreign_key: true
  end
end
