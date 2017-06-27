class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :album_id, null: false
      t.string :title, null: false
      t.string :features
      t.string :producer
      t.text :lyrics, null: false
      t.integer :annotations, array: true, default: []
      t.integer :comments, array: true, default: []
    end
  end
end
