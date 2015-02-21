class Deck
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :game_deck
  has_many :cards

  # :type, 0 for 'enemy deck' and 1 for 'player deck'
  field :type, type: Integer

  validates_presence_of :type
  validates_numericality_of :type,
    :greater_than_or_equal_to 0,
    :less_than_or_equal_to 1
end
