class CreateGameStats < ActiveRecord::Migration[6.0]
  def change
    create_table :game_stats do |t|
      t.string :stat_name
      t.integer :stat_value
      t.reference :player, null: false, foreign_key: true
      t.reference :team, null: false, foreign_key: true
      t.reference :user, null: false, foreign_key: true
    end
  end
end
