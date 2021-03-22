class AddColumnToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_reference :players, :teams, null: false, foreign_key: true
  end
end
