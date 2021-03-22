class Game < ApplicationRecord
  belongs_to :teams
  belongs_to :players

end
