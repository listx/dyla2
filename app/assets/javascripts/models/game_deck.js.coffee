# for more details see: http://emberjs.com/guides/models/defining-models/

Dyla.GameDeck = DS.Model.extend
  name: DS.attr('string')
  version: DS.attr('string')
  decks: DS.hasMany('deck', {async: true})
