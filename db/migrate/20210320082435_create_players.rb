class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.string :jersey_number
      t.reference :team, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
