json.array!(@game_decks) do |game_deck|
  json.extract! game_deck, :id
  json.url game_deck_url(game_deck, format: :json)
end
