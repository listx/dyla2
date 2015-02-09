class GameDeck
  include Mongoid::Document

  has_many :decks

  field :name, type: String
  field :version, type: String

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :version
  validates_uniqueness_of :version
end
