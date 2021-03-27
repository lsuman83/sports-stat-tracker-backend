class TeamsSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :location, :sport, :league_name

  has_many :players

end
