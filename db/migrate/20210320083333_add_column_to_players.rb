class AddColumnToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :player_photo, :text
  end
end
