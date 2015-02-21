class Card
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :deck

  field :name, type: String
  field :cost, type: Integer

  validates_presence_of :name
  validates_uniqueness_of :name
end
