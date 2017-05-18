class CreateJoinTableProjectDocType < ActiveRecord::Migration[5.0]
  def change
    create_join_table :projects, :doc_types do |t|
      # t.index [:project_id, :doc_type_id]
      # t.index [:doc_type_id, :project_id]
    end
  end
end
