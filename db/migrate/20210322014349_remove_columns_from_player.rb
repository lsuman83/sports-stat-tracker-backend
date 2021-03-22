class RemoveColumnsFromPlayer < ActiveRecord::Migration[6.0]
  def change
    remove_column :players, :sport, :string
    remove_reference :players, :users, null: false, foreign_key: true
  end
end
