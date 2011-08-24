class AddFileAttachments < ActiveRecord::Migration
  def self.up
    create_table :file_attachments do |t|
      t.column :attachment_file_name, :string
      t.column :attachment_content_type, :string
      t.column :attachment_file_size, :integer
      t.column :attachment_updated_at, :datetime
      t.column :story_id, :integer
    end
  end

  def self.down
    drop_table :file_attachments
  end
end
