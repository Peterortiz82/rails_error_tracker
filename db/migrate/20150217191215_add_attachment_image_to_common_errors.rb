class AddAttachmentImageToCommonErrors < ActiveRecord::Migration
  def self.up
    change_table :common_errors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :common_errors, :image
  end
end
