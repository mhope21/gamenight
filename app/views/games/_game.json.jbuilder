json.extract! game, :id, :name, :max_players, :playing_time, :description, :already_played, :created_at, :updated_at
json.url game_url(game, format: :json)
