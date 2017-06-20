class AddConstraintsToUsername2 < ActiveRecord::Migration
  def change
    change_column_null :users, :username, true 
  end
end
