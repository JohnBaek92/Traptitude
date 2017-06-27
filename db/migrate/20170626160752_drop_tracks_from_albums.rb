class DropTracksFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :tracks
  end
end
