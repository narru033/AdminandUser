class AddAttachmentVideoToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :books, :video
  end
end
