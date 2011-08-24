class AddFileToStory < ActiveRecord::Migration
  def self.up
    add_column :story, :file_attachment_name, :string
    add_column :story, :file_attachment_content_type, :string
    add_column :story, :file_attachment_size, :integer
    add_column :story, :file_attachment_updated_at, :datetime
  end

  def self.down
    remove_column :story, :file_attachment_updated_at
    remove_column :story, :file_attachment_size
    remove_column :story, :file_attachment_content_type
    remove_column :story, :file_attachment_name
  end
end
