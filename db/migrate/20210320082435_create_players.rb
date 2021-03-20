class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :sport
      t.string :position
      t.integer :jersey_number

      t.timestamps
    end
  end
end
