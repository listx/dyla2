srand 12345

# Create a set of sample games.
namespace :db do
  task populate: :environment do
    GameDeck.destroy_all
    Deck.destroy_all
    Card.destroy_all

    GAME_DECK_MAX = 5
    DECK_MAX = 4
    CARD_MAX = 20

    def random_cost
      (1..20).to_a.sample
    end

    # Create games. A game is made up of a collection of decks, called a 'game
    # deck'.
    GAME_DECK_MAX.times do
      gd = GameDeck.create(
        name: Faker::Lorem.word,
        version: random_cost.to_s
      )
      # For this game, create decks.
      DECK_MAX.times do
        d = Deck.create(
          game_deck_id: gd.id,
          tipe: Faker::Hacker.noun,
        )
        # For this deck, create cards.
        CARD_MAX.times do
          Card.create(
            deck_id: d.id,
            name: Faker::Commerce.product_name,
            cost: random_cost
          )
        end
      end
    end
  end
end
