class Deck
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :game_deck
  has_many :cards

  # :tipe; e.g. "player" deck, "environment" deck, "villain" deck, etc. It
  # depends on the game.
  field :tipe, type: String

  validates_presence_of :tipe
end
