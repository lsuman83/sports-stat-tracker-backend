class CreateGameStats < ActiveRecord::Migration[6.0]
  def change
    create_table :game_stats do |t|
      t.string :stat_name
      t.float :stat_value
      t.references :players, null: false, foreign_key: true
      t.references :games, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
