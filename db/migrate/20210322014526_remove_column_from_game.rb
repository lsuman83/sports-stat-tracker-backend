class RemoveColumnFromGame < ActiveRecord::Migration[6.0]
  def change
    remove_reference :games, :users, null: false, foreign_key: true
  end
end
