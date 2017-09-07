class Adduniquetofavorites < ActiveRecord::Migration
  def change
    add_index :favorites, [:user_id, :track_id], unique: true
  end
end
