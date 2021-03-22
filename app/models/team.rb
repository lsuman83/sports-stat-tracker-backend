class Team < ApplicationRecord
    has_one_attached :team_logo
    belongs_to :users

    has_many :games

end
