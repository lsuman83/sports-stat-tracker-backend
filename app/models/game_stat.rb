class GameStat < ApplicationRecord
  belongs_to :players
  belongs_to :games
  belongs_to :users
end
