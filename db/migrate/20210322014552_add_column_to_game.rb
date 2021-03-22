class AddColumnToGame < ActiveRecord::Migration[6.0]
  def change
    add_reference :games, :teams, null: false, foreign_key: true
  end
end
