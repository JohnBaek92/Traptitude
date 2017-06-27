class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.integer :user_id
      t.integer :track_id
      t.text :body
      t.integer :start_idx
      t.integer :end_idx
      t.timestamps
    end

    add_index :annotations, [:start_idx, :end_idx], unique: true
  end
end
