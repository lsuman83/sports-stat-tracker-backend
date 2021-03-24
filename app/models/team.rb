class Team < ApplicationRecord
    has_one_attached :team_logo

    has_many :games

end
