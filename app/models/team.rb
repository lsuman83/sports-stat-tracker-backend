class Team < ApplicationRecord
    has_one_attached :team_logo

    has_many :games
    has_many :players

    def team_logo_url    
        Rails.application.routes.url_helpers.url_for(team_logo) if team_logo.attached?
    end

end
