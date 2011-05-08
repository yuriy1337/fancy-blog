class AddSteamIdToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :stream_id, :integer
  end

  def self.down
    remove_column :posts, :stream_id
  end
end
