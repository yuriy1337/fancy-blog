class CreateElements < ActiveRecord::Migration
  def self.up
    create_table :elements do |t|
      t.integer :post_id
      t.text :description
      t.string :path
      t.string :filename
      t.string :content_type
      t.integer :width
      t.integer :height
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :elements
  end
end
