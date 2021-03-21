class Game < ApplicationRecord
  belongs_to :players
  belongs_to :users
end
