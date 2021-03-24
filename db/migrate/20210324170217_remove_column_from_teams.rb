class RemoveColumnFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_reference :teams, :users, null: false, foreign_key: true
  end
end
