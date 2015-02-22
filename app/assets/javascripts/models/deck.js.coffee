# for more details see: http://emberjs.com/guides/models/defining-models/

Dyla.Deck = DS.Model.extend
  tipe: DS.attr('string')
  cards: DS.hasMany('card', {async: true})
