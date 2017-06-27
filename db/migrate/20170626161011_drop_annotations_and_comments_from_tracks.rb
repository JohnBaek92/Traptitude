class DropAnnotationsAndCommentsFromTracks < ActiveRecord::Migration
  def change
    remove_column :tracks, :annotations
    remove_column :tracks, :comments
  end
end
