class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :number
      t.string :customer

      t.timestamps
    end
  end
end
