class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.string :jersey_number
      t.references :team, null: false, foreign_key: true
    end
  end
end
