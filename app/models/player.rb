class Player < ApplicationRecord
    has_one_attached :player_pic
    
    belongs_to :team
    has_many :games

end
