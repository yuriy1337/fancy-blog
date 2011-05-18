class AddAttachmentElementToElement < ActiveRecord::Migration
  def self.up
    add_column :elements, :element_file_name, :string
    add_column :elements, :element_content_type, :string
    add_column :elements, :element_file_size, :integer
    add_column :elements, :element_updated_at, :datetime
  end

  def self.down
    remove_column :elements, :element_file_name
    remove_column :elements, :element_content_type
    remove_column :elements, :element_file_size
    remove_column :elements, :element_updated_at
  end
end
