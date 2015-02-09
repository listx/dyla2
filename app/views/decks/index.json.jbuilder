json.array!(@decks) do |deck|
  json.extract! deck, :id
  json.url deck_url(deck, format: :json)
end
