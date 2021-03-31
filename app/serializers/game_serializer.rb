class GameSerializer
  include JSONAPI::Serializer
  attributes :id, :date, :location, :win, :score, :team_id
end
