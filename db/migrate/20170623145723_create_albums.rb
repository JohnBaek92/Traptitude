class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.date :release_date, null: false
      t.string :musician, null: false
      t.integer :tracks, array: true, default: [], null: false
      t.timestamps null: false
    end
  end
end
