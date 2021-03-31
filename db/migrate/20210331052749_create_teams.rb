class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :location
      t.string :sport
      t.string :league_name
    end
  end
end
