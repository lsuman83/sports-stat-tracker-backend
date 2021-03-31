class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :opponent
      t.string :date
      t.string :location
      t.string :score
      t.string :win
      t.references :team_id, null: false, foreign_key: true
    end
  end
end
