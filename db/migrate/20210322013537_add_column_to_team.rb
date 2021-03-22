class AddColumnToTeam < ActiveRecord::Migration[6.0]
  def change
    add_reference :teams, :users, null: false, foreign_key: true
  end
end
