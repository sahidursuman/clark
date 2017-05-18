class ChangeIsImageInTags < ActiveRecord::Migration[5.0]
  def change
	rename_column :tags, :is_image?, :is_image
  end
end
