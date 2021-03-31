class Player < ApplicationRecord
    has_one_attached :player_pic

    belongs_to :team
    

    def player_pic_url
        Rails.application.routes.url_helpers.url_for(player_pic) if player_pic.attached?
    end

end
