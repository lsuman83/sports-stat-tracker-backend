class Player < ApplicationRecord
    has_one_attached :player_pic

    belongs_to :teams
    has_many :games

end
