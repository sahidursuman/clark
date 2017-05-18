class AddAttachmentFileToTemplates < ActiveRecord::Migration
  def self.up
    change_table :templates do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :templates, :file
  end
end
