class AddIsImageToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :is_image?, :boolean
  end
end
