class PlayerSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :position, :jersey_number, :player_pic_url, :team_id
end
