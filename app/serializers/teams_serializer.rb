class TeamsSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :location, :sport, :league_name, :team_logo_url

  has_many :players
  has_many :games
end
