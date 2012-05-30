class AddAttachmentLogoToProtectora < ActiveRecord::Migration
  def self.up
    add_column :protectoras, :logo_file_name, :string
    add_column :protectoras, :logo_content_type, :string
    add_column :protectoras, :logo_file_size, :integer
    add_column :protectoras, :logo_updated_at, :datetime
  end

  def self.down
    remove_column :protectoras, :logo_file_name
    remove_column :protectoras, :logo_content_type
    remove_column :protectoras, :logo_file_size
    remove_column :protectoras, :logo_updated_at
  end
end
