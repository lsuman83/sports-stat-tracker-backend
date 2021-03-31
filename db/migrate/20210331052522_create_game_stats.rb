class CreateGameStats < ActiveRecord::Migration[6.0]
  def change
    create_table :game_stats do |t|
      t.string :stat_name
      t.integer :stat_value
      t.references :player_id, null: false, foreign_key: true
      t.references :team_id, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true
    end
  end
end
